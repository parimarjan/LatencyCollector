import pickle
import numpy as np
import copy
import argparse
import glob
import pdb
import psycopg2 as pg
import time
import subprocess as sp
import os
import pandas as pd
from collections import defaultdict
import sys
sys.path.append(".")
# from query_representation.utils import *
import pdb
from cost_model import *
from utils import *
from multiprocessing import Process

TIMEOUT_CONSTANT = 909

def read_flags():
    parser = argparse.ArgumentParser()
    parser.add_argument("--samples_type", type=str, required=False,
            default=None)
    parser.add_argument("--num_processes", type=int, required=False,
            default=10)
    parser.add_argument("--parallel_workers", type=int, required=False,
            default=0)
    parser.add_argument("--no_index", type=int, required=False,
            default=0)
    parser.add_argument("--drop_cache", type=int, required=False,
            default=0)

    parser.add_argument("--result_dir", type=str, required=False,
            default="./rt_results")
    parser.add_argument("--query_dir", type=str, required=False,
            default="./queries/job")

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

def execute_sql(sql, db_name,
        cost_model="cm1",
        explain=False,
        materialize=False,
        timeout=900000,
        drop_cache=False,
        num_workers = 1,
        ):
    '''
    '''
    if "explain" in sql:
        if explain:
            sql = sql.replace("explain (format json)", "explain (analyze,costs, format json)")
        else:
            sql = sql.replace("explain (format json)", "")
    else:
        sql = "explain (analyze,costs, format json) " + sql

    if drop_cache:
        if str(args.port) in PORT_TO_DIR:
            pgdir = PORT_TO_DIR[str(args.port)]
        else:
            assert False
            pgdir = ""

        drop_cache_cmd = "bash drop_cache.sh {}".format(pgdir)
        p = sp.Popen(drop_cache_cmd, shell=True)
        p.wait()
        time.sleep(0.1)
        for ri in range(30):
            try:
                con = pg.connect(port=args.port,dbname=db_name,
                        user=args.user,password=args.pwd,host="localhost")
                print("succeeded in try: ", ri)
                break
            except:
                print("failed in try: ", ri)
                time.sleep(0.1)
                continue

    else:
        con = pg.connect(port=args.port,dbname=db_name,
                user=args.user,password=args.pwd,host="localhost")

    # TODO: clear cache

    cursor = con.cursor()
    # cursor.execute("LOAD 'pg_hint_plan';")
    cursor.execute("SET geqo_threshold = {}".format(32))

    # set_cost_model(cursor, cost_model)

    if args.no_index:
        cursor.execute("SET enable_indexscan = {}".format("off"))
        cursor.execute("SET enable_seqscan = {}".format("on"))
        cursor.execute("SET enable_indexonlyscan = {}".format("off"))
        cursor.execute("SET enable_bitmapscan = {}".format("off"))
        cursor.execute("SET enable_tidscan = {}".format("off"))

    if materialize:
        cursor.execute("SET enable_material = on")

    # the idea is that we inject the #rows using the pg_hint_plan into
    # postgresql; then the join orders etc. are computed the postgresql engine
    # using the given cardinalities
    cursor.execute("SET join_collapse_limit = {}".format(32))
    cursor.execute("SET from_collapse_limit = {}".format(32))

    if timeout is not None:
        cursor.execute("SET statement_timeout = {}".format(timeout))

    start = time.time()

    try:
        cursor.execute(sql)
    except KeyboardInterrupt:
        print("killed because of ctrl+c")
        sys.exit(-1)
    except Exception as e:
        print(e)
        # cursor.execute("ROLLBACK")
        # con.commit()
        if not "timeout" in str(e):
            print("failed to execute for reason other than timeout")
            print(e)
            # print(sql)
            # cursor.close()
            con.close()
            time.sleep(6)
            return None, -1.0
        else:
            print("failed because of timeout!")
            end = time.time()

            cursor.close()
            con.close()
            return None, (timeout/1000) + 9.0

    explain_output = cursor.fetchall()
    end = time.time()

    cursor.close()
    con.close()

    return explain_output, end-start

def run_single(pnum, args):
    def add_runtime_row(qname, rt, exp_analyze, start_time):
        cur_runtimes["qname"].append(qname)
        cur_runtimes["runtime"].append(rt)
        cur_runtimes["exp_analyze"].append(exp_analyze)
        cur_runtimes["start_time"].append(start_time)
        akeys = vars(args)
        for k,v in akeys.items():
            cur_runtimes[k] = v

    exp_start_time = time.time()

    cost_model = args.cost_model
    make_dir(args.result_dir)
    rt_fn = os.path.join(args.result_dir, "Runtimes{}.csv".format(pnum))

    # go in order and execute runtimes...
    if os.path.exists(rt_fn):
        runtimes = pd.read_csv(rt_fn)
    else:
        runtimes = None

    if runtimes is None:
        columns = ["start_time", "qname", "runtime", "exp_analyze"]
        runtimes = pd.DataFrame(columns=columns)

    cur_runtimes = defaultdict(list)
    total_rt = 0.0

    assert os.path.exists(args.query_dir)
    sql_fns = os.listdir(args.query_dir)
    random.shuffle(sql_fns)

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
    elif "credit" in args.query_dir:
        db_name = "credit"
    elif "walmart" in args.query_dir:
        db_name = "walmart"
    elif "baseball" in args.query_dir:
        db_name = "baseball"
    elif "movielens" in args.query_dir:
        db_name = "movielens"
    else:
        assert False

    sqls = []
    new_sql_fns = []

    for sfn in sql_fns:
        if ".sql" not in sfn:
            continue
        fn = os.path.join(args.query_dir, sfn)
        with open(fn, "r") as f:
            sql = f.read()
            sqls.append(sql)
        new_sql_fns.append(sfn)

    sql_fns = new_sql_fns

    print("Going to execute {} queries, {} reps each".format(
        len(sqls), args.reps))

    for rep in range(args.reps):
        random.shuffle(sql_fns)

        for i,sql in enumerate(sqls):
            if args.num_queries != -1 and i >= args.num_queries:
                continue

            start_time = time.time()
            exp_time = start_time - exp_start_time
            block = int(exp_time / 900)

            # if pnum > 2 and pnum <= 5:
                # if block % 2 == 0:
                    # time.sleep(800)

            # elif pnum >= 6:
                # if block % 4 != 2:
                    # time.sleep(600)

            # check for reps
            exp_analyze, rt = execute_sql(sql,
                    db_name,
                    cost_model=cost_model,
                    explain=args.explain,
                    timeout=args.timeout,
                    materialize = args.materialize,
                    drop_cache=args.drop_cache)

            if rt >= 0.0:
                total_rt += rt

            add_runtime_row(sql_fns[i], rt, exp_analyze, start_time)

            rts = np.array(cur_runtimes["runtime"])
            rts = rts[rts >= 0.0]
            num_fails = len(cur_runtimes["runtime"]) - len(rts)

            print("{}, {}, Rep: {}, Cur: {}, CurRT: {}, TotalRT: {}, #Queries:{}, AvgRt: {}, #Fails: {}"\
                .format(
                start_time,
                args.result_dir,
                rep,
                sql_fns[i], rts[-1],
                round(total_rt,2), len(rts),
                round(sum(rts) / len(rts), 2), num_fails))
            sys.stdout.flush()

            df = pd.concat([runtimes, pd.DataFrame(cur_runtimes)], ignore_index=True)
            df.to_csv(rt_fn, index=False)

    print("Total runtime was: ", total_rt)

def main():
    processes = []
    args2 = copy.deepcopy(args)
    args3 = copy.deepcopy(args)
    args2.query_dir = "./queries/tpch"
    args3.query_dir = "./queries/ergast-small"

    for i in range(args.num_processes):
        if i % 3 == 0:
            p = Process(target=run_single, args=(i, args))
        elif i % 3 == 1:
            p = Process(target=run_single, args=(i, args2))
        elif i % 3 == 2:
            p = Process(target=run_single, args=(i, args3))

        p.start()
        processes.append(p)

    for pi, p in enumerate(processes):
        # if pi <= 2:
        p.join()

if __name__ == "__main__":
    args = read_flags()
    main()
