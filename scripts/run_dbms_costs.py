import pickle
import numpy as np
import argparse
import glob
import pdb
import psycopg2 as pg
import time
import subprocess as sp
import os
import pandas as pd
from collections import defaultdict
try:
    # import mysql
    import mysql.connector
except:
    pass

try:
    import duckdb
except:
    pass

import sys
sys.path.append(".")
# from query_representation.utils import *
import pdb
from cost_model import *
from utils import *

TIMEOUT_CONSTANT = 909

PORT_TO_DIR = {}
PORT_TO_DIR["5441"] = "/flash1/pari/pg_data_dir"
PORT_TO_DIR["5440"] = "/spinning/pari/pg_data_dir"
PORT_TO_DIR["5442"] = "/flashrd/pari/pg_data_dir"

PAR_WORKERS_FMT="""sed -i 's/max_parallel_workers = 0/max_parallel_workers = {NUM}/g' {PCONF}"""
PAR_WORKERS_FMT2="""sed -i 's/max_worker_processes = 0/max_worker_processes = {NUM}/g' {PCONF}"""
PAR_WORKERS_FMT3="""sed -i 's/max_parallel_workers_per_gather = 0/max_parallel_workers_per_gather = {NUM}/g' {PCONF}"""

PAR_WORKERS_FMT_REV="""sed -i 's/max_parallel_workers = {NUM}/max_parallel_workers = 0/g' {PCONF}"""
PAR_WORKERS_FMT2_REV="""sed -i 's/max_worker_processes = {NUM}/max_worker_processes = 0/g' {PCONF}"""
PAR_WORKERS_FMT3_REV="""sed -i 's/max_parallel_workers_per_gather = {NUM}/max_parallel_workers_per_gather = 0/g' {PCONF}"""

TABLES = ["title","cast_info",
        "name", "aka_name", "keyword", "movie_info",
        "movie_companies", "company_type", "kind_type", "info_type",
        "role_type", "company_name", "char_name",
        "link_type", "movie_info_idx", "comp_cast_type",
        "person_info",
        "movie_link", "movie_keyword",
        "aka_title", "complete_cast"]

def read_flags():
    parser = argparse.ArgumentParser()
    parser.add_argument("--samples_type", type=str, required=False,
            default=None)
    parser.add_argument("--parallel_workers", type=int, required=False,
            default=0)
    parser.add_argument("--no_index", type=int, required=False,
            default=0)
    parser.add_argument("--drop_cache", type=int, required=False,
            default=0)
    parser.add_argument("--col_store", type=int, required=False,
            default=0)

    parser.add_argument("--cost_kind", type=str, required=False,
            default="dbms-default-cost")

    parser.add_argument("--dbms", type=str, required=False,
            default="postgres")
    parser.add_argument("--result_dir", type=str, required=False,
            default="./rt_results")
    parser.add_argument("--query_dir", type=str, required=False,
            default="./postgres_cost_sqls/ceb-small")

    parser.add_argument("--cost_model", type=str, required=False,
            default="C")
    parser.add_argument("--materialize", type=int, required=False,
            default=0)
    parser.add_argument("--explain", type=int, required=False,
            default=1)
    parser.add_argument("--reps", type=int, required=False,
            default=1)
    parser.add_argument("--num_queries", type=int, required=False,
            default=-1)
    parser.add_argument("--timeout", type=int, required=False,
            default=None)
    parser.add_argument("--rerun_timeouts", type=int, required=False,
            default=1)
    parser.add_argument("--db_name", type=str, required=False,
            default="imdb")
    # parser.add_argument("--costs_fn_tmp", type=str, required=False,
            # default="PostgresPlanCost-{}.csv")

    parser.add_argument("--db_host", type=str, required=False,
            default="localhost")
    parser.add_argument("--user", type=str, required=False,
            default="ubuntu")
    parser.add_argument("--pwd", type=str, required=False,
            default="")

    parser.add_argument("--port", type=str, required=False,
            default=5432)

    return parser.parse_args()

def get_cost_postgresql(sql,
        db_name,
        cost_model="cm1",
        explain=False,
        materialize=False,
        timeout=900000,
        drop_cache=False,
        num_workers = 1,
        ):
    '''
    '''
    con = pg.connect(port=args.port,dbname=db_name,
            user=args.user,password=args.pwd,host="localhost")
    cursor = con.cursor()
    cursor.execute("LOAD 'pg_hint_plan';")

    # if args.no_index:
        # cursor.execute("SET enable_indexscan = {}".format("off"))
        # cursor.execute("SET enable_seqscan = {}".format("on"))
        # cursor.execute("SET enable_indexonlyscan = {}".format("off"))
        # cursor.execute("SET enable_bitmapscan = {}".format("off"))
        # cursor.execute("SET enable_tidscan = {}".format("off"))

    if materialize:
        cursor.execute("SET enable_material = on")

    start = time.time()

    try:
        cursor.execute(sql)
    except KeyboardInterrupt:
        print("killed because of ctrl+c")
        sys.exit(-1)
    except Exception as e:
        print(e)
        return None, 0.0

    explain_output = cursor.fetchall()
    total_cost = explain_output[0][0][0]["Plan"]["Total Cost"]

    cursor.close()
    con.close()

    return explain_output, total_cost

def main():
    def add_cost_row(qname, cost, exp):
        cur_costs["qname"].append(qname)
        cur_costs["cost"].append(cost)
        cur_costs["exp"].append(exp)

    print(vars(args))
    cost_model = args.cost_model

    make_dir(args.result_dir)

    if args.cost_kind == "dbms-cost":
        rt_fn = os.path.join(args.result_dir, "Costs.csv")
    elif args.cost_kind == "dbms-default-cost":
        rt_fn = os.path.join(args.result_dir, "DefaultCosts.csv")
    else:
        rt_fn = os.path.join(args.result_dir, "TrueCosts.csv")

    # go in order and execute runtimes...
    if os.path.exists(rt_fn):
        costs = pd.read_csv(rt_fn)
    else:
        costs = None

    if costs is None:
        columns = ["qname", "cost", "exp"]
        costs = pd.DataFrame(columns=columns)

    cur_costs = defaultdict(list)
    total_rt = 0.0

    assert os.path.exists(args.query_dir)

    query_dir = os.path.join(args.query_dir, args.cost_kind)

    sql_fns = os.listdir(query_dir)
    sql_fns.sort()

    sqls = []
    new_sql_fns = []

    for sfn in sql_fns:
        if ".sql" not in sfn:
            continue
        fn = os.path.join(query_dir, sfn)
        with open(fn, "r") as f:
            sql = f.read()
            sqls.append(sql)
        new_sql_fns.append(sfn)

    sql_fns = new_sql_fns

    print("Going to get costs for {} queries".format(
        len(sqls)))

    if "job" in args.query_dir or "ceb" in args.query_dir:
        db_name = "imdb"
    elif "ergast" in args.query_dir:
        db_name = "ergastf1"
    elif "stats" in args.query_dir:
        db_name = "stats"
    elif "stack" in args.query_dir:
        db_name = "stack"
    elif "tpch" in args.query_dir:
        db_name = "tpch"
    elif "ccs" in args.query_dir:
        db_name = "ccs"
    elif "financial" in args.query_dir:
        db_name = "financial"
    elif "accidents" in args.query_dir:
        db_name = "accidents"
    elif "airline" in args.query_dir:
        db_name = "airline"
    elif "consumer" in args.query_dir:
        db_name = "consumer"
    elif "seznam" in args.query_dir:
        db_name = "seznam"
    elif "basketball" in args.query_dir:
        db_name = "basketball"
    elif "ssb" in args.query_dir:
        db_name = "ssb"
    elif "credit" in args.query_dir:
        db_name = "credit"
    elif "genome" in args.query_dir:
        db_name = "genome"
    elif "seznam" in args.query_dir:
        db_name = "seznam"
    elif "credit" in args.query_dir:
        db_name = "credit"
    elif "baseball" in args.query_dir:
        db_name = "baseball"
    elif "ssb" in args.query_dir:
        db_name = "ssb"
    elif "walmart" in args.query_dir:
        db_name = "walmart"
    elif "movielens" in args.query_dir:
        db_name = "movielens"
    else:
        assert False

    if args.dbms == "duckdb":
        db_name = db_name + ".duckdb"

    costs_list = []
    for i,sql in enumerate(sqls):
        # check for reps
        if args.dbms == "postgres":
            exp_cost, cost = get_cost_postgresql(sql,
                    db_name = db_name,
                    cost_model=cost_model,
                    explain=args.explain,
                    timeout=args.timeout,
                    materialize = args.materialize,
                    drop_cache=args.drop_cache)
            costs_list.append(cost)

            print("Current Cost: ", cost, " Avg Cost: ",
                    sum(costs_list)/len(costs_list))

        add_cost_row(sql_fns[i], cost, exp_cost)

        df = pd.concat([costs, pd.DataFrame(cur_costs)], ignore_index=True)
        df.to_csv(rt_fn, index=False)

    print(min(costs_list))
    pdb.set_trace()
    print("Total runtime was: ", total_rt)

if __name__ == "__main__":
    args = read_flags()
    main()
