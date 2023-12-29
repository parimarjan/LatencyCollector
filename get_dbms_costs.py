import psycopg2 as pg
import getpass
import re
import os
import sys
import numpy as np
import multiprocessing as mp
import math

import pdb
import copy
import glob
import pandas as pd
import errno

def make_dir(directory):
    try:
        os.makedirs(directory)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise

join_types = set(["Nested Loop", "Hash Join", "Merge Join", "Index Scan",\
        "Seq Scan", "Bitmap Heap Scan"])

## for using pg_hint_plan; Refer to their documentation for more details.
PG_HINT_CMNT_TMP = '''/*+ {COMMENT} */'''
PG_HINT_JOIN_TMP = "{JOIN_TYPE}({TABLES}) "
PG_HINT_CARD_TMP = "Rows({TABLES} #{CARD}) "
PG_HINT_SCAN_TMP = "{SCAN_TYPE}({TABLE}) "
PG_HINT_LEADING_TMP = "Leading({JOIN_ORDER})"
PG_HINT_JOINS = {}
PG_HINT_JOINS["Nested Loop"] = "NestLoop"
PG_HINT_JOINS["Hash Join"] = "HashJoin"
PG_HINT_JOINS["Merge Join"] = "MergeJoin"

PG_HINT_SCANS = {}
PG_HINT_SCANS["Seq Scan"] = "SeqScan"
PG_HINT_SCANS["Index Scan"] = "IndexScan"
PG_HINT_SCANS["Index Only Scan"] = "IndexOnlyScan"
PG_HINT_SCANS["Bitmap Heap Scan"] = "BitmapScan"
PG_HINT_SCANS["Tid Scan"] = "TidScan"

def extract_values(obj, key):
    """Recursively pull values of specified key from nested JSON."""
    arr = []

    def extract(obj, arr, key):
        """Return all matching values in an object."""
        if isinstance(obj, dict):
            for k, v in obj.items():
                if isinstance(v, (dict, list)):
                    extract(v, arr, key)
                elif k == key:
                    # if "Scan" in v:
                        # print(v)
                        # pdb.set_trace()
                    # if "Join" in v:
                        # print(obj)
                        # pdb.set_trace()
                    arr.append(v)

        elif isinstance(obj, list):
            for item in obj:
                extract(item, arr, key)
        return arr

    results = extract(obj, arr, key)
    return results

def _gen_pg_hint_cards(cards):
    '''
    '''
    card_str = ""
    for aliases, card in cards.items():
        if isinstance(aliases, tuple):
            aliases = " ".join(aliases)
        card_line = PG_HINT_CARD_TMP.format(TABLES = aliases,
                                            CARD = card)
        card_str += card_line
    return card_str

def extract_cards(plan, jg=None):
    aliases = extract_values(plan, "Alias")
    if "Actual Rows" in plan:
        rows = plan["Actual Rows"]
    else:
        print("no actual rows!")
        rows = 1.0

    return " ".join(aliases), rows

def extract_aliases2(plan, jg=None):
    aliases = extract_values(plan, "Alias")
    rels = extract_values(plan, "Relation Name")
    assert len(aliases) == len(rels)
    froms = [rels[i] + " as " + aliases[i] for i in range(len(aliases))]

    return froms

def get_cards(explain):
    '''
    '''
    cards = {}

    def __extract_jo(plan):
        if plan["Node Type"] in join_types:
            left, lrows = extract_cards(plan["Plans"][0])
            right, rrows = extract_cards(plan["Plans"][1])
            # print(left, lrows)
            # print(right, rrows)

            cards[left] = lrows
            cards[right] = rrows

            # left = list(extract_aliases2(plan["Plans"][0], jg=join_graph))
            # right = list(extract_aliases2(plan["Plans"][1], jg=join_graph))
            # print(left, right)
            # all_froms = left + right
            # all_nodes = []
            # for from_clause in all_froms:
                # from_alias = from_clause[from_clause.find(" as ")+4:]
                # if "_info" in from_alias:
                    # print(from_alias)
                    # pdb.set_trace()
                # all_nodes.append(from_alias)

            # all_nodes.sort()
            # all_nodes = " ".join(all_nodes)
            # physical_join_ops[all_nodes] = plan["Node Type"]

            if len(left) == 1 and len(right) == 1:
                # __update_scan(plan["Plans"][0])
                # __update_scan(plan["Plans"][1])
                return ""

            if len(left) == 1:
                # __update_scan(plan["Plans"][0])
                return __extract_jo(plan["Plans"][1])

            if len(right) == 1:
                # __update_scan(plan["Plans"][1])
                return __extract_jo(plan["Plans"][0])

            return ("(" + __extract_jo(plan["Plans"][0])
                    + ") CROSS JOIN ("
                    + __extract_jo(plan["Plans"][1]) + ")")

        return __extract_jo(plan["Plans"][0])

    try:
        ex = __extract_jo(explain[0][0][0]["Plan"])
        return cards

    except Exception as e:
        # print(explain)
        return cards
        # pass
        # pdb.set_trace()

def get_pg_join_order(join_graph, explain):
    '''
    '''
    physical_join_ops = {}
    scan_ops = {}
    def __update_scan(plan):
        node_types = extract_values(plan, "Node Type")
        alias = extract_values(plan, "Alias")[0]
        for nt in node_types:
            if "Scan" in nt:
                scan_type = nt
                break
        scan_ops[alias] = nt

    def __extract_jo(plan):
        if plan["Node Type"] in join_types:
            left = list(extract_aliases2(plan["Plans"][0], jg=join_graph))
            right = list(extract_aliases2(plan["Plans"][1], jg=join_graph))

            all_froms = left + right
            all_nodes = []
            for from_clause in all_froms:
                from_alias = from_clause[from_clause.find(" as ")+4:]
                if "_info" in from_alias:
                    print(from_alias)
                    pdb.set_trace()
                all_nodes.append(from_alias)

            all_nodes.sort()
            all_nodes = " ".join(all_nodes)
            physical_join_ops[all_nodes] = plan["Node Type"]

            if len(left) == 1 and len(right) == 1:
                __update_scan(plan["Plans"][0])
                __update_scan(plan["Plans"][1])
                return left[0] +  " CROSS JOIN " + right[0]

            if len(left) == 1:
                __update_scan(plan["Plans"][0])
                return left[0] + " CROSS JOIN (" + __extract_jo(plan["Plans"][1]) + ")"

            if len(right) == 1:
                __update_scan(plan["Plans"][1])
                return "(" + __extract_jo(plan["Plans"][0]) + ") CROSS JOIN " + right[0]

            return ("(" + __extract_jo(plan["Plans"][0])
                    + ") CROSS JOIN ("
                    + __extract_jo(plan["Plans"][1]) + ")")

        return __extract_jo(plan["Plans"][0])

    try:
        return __extract_jo(explain[0][0][0]["Plan"]), physical_join_ops, scan_ops
    except Exception as e:
        # print(explain)
        print(e)
        pdb.set_trace()

def _gen_pg_hint_join(join_ops):
    '''
    '''
    join_str = ""
    for tables, join_op in join_ops.items():
        join_line = PG_HINT_JOIN_TMP.format(TABLES = tables,
                                            JOIN_TYPE = PG_HINT_JOINS[join_op])
        join_str += join_line
    return join_str

def _gen_pg_hint_scan(scan_ops):
    '''
    '''
    scan_str = ""
    for alias, scan_op in scan_ops.items():
        scan_line = PG_HINT_SCAN_TMP.format(TABLE = alias,
                                            SCAN_TYPE = PG_HINT_SCANS[scan_op])
        scan_str += scan_line
    return scan_str

def get_leading_hint(join_graph, explain):
    '''
    Ryan's implementation.
    '''
    def __extract_jo(plan):
        if plan["Node Type"] in join_types:
            left = list(extract_aliases2(plan["Plans"][0], jg=join_graph))
            right = list(extract_aliases2(plan["Plans"][1], jg=join_graph))

            if len(left) == 1 and len(right) == 1:
                left_alias = left[0][left[0].lower().find(" as ")+4:]
                right_alias = right[0][right[0].lower().find(" as ")+4:]
                return left_alias +  " " + right_alias

            if len(left) == 1:
                left_alias = left[0][left[0].lower().find(" as ")+4:]
                return left_alias + " (" + __extract_jo(plan["Plans"][1]) + ")"

            if len(right) == 1:
                right_alias = right[0][right[0].lower().find(" as ")+4:]
                return "(" + __extract_jo(plan["Plans"][0]) + ") " + right_alias

            return ("(" + __extract_jo(plan["Plans"][0])
                    + ") ("
                    + __extract_jo(plan["Plans"][1]) + ")")

        return __extract_jo(plan["Plans"][0])

    jo = __extract_jo(explain[0][0][0]["Plan"])
    jo = "(" + jo + ")"
    return PG_HINT_LEADING_TMP.format(JOIN_ORDER = jo)


def get_pghint_modified_sql(sql, cardinalities, join_ops,
        leading_hint, scan_ops):
    '''
    @cardinalities: dict
    @join_ops: dict

    @ret: sql, augmented with appropriate comments.
    '''
    if "explain (format json)" not in sql:
        sql = " explain (format json) " + sql

    comment_str = ""
    if cardinalities is not None:
        card_str = _gen_pg_hint_cards(cardinalities)
        # gen appropriate sql with comments etc.
        comment_str += card_str

    if join_ops is not None:
        join_str = _gen_pg_hint_join(join_ops)
        comment_str += join_str + " "
    if leading_hint is not None:
        comment_str += leading_hint + " "
    if scan_ops is not None:
        scan_str = _gen_pg_hint_scan(scan_ops)
        comment_str += scan_str + " "

    pg_hint_str = PG_HINT_CMNT_TMP.format(COMMENT=comment_str)
    sql = pg_hint_str + sql
    return sql

def get_queries(QDIR):
    fns = os.listdir(QDIR)
    qnames = {}
    for fn in fns:
        if ".sql" in fn:
            # qnames.append(fn)
            with open(os.path.join(QDIR, fn), "r") as f:
                qnames[os.path.basename(fn)] = f.read()

    return qnames

OUT_DIR = "./postgres_cost_sqls/"
# OUT_SQL_FMT = "{name}.sql"

if __name__ == "__main__":
    result_dir = "exp13_imdb"
    dfs = []
    rtfns = glob.iglob(result_dir + "/*/results/Runtime*.csv")
    for rtfn in rtfns:
        dfs.append(pd.read_csv(rtfn))
        break

    df = pd.concat(dfs)
    df.drop_duplicates(["qname"])

    QDIR = "./queries/"
    WKDIR = "./ceb-small"

    out_wk_dir = os.path.join(OUT_DIR, WKDIR)
    make_dir(out_wk_dir)

    out_cost_dir_default = os.path.join(out_wk_dir, "dbms-default-cost")
    make_dir(out_cost_dir_default)

    out_cost_dir = os.path.join(out_wk_dir, "dbms-cost")
    make_dir(out_cost_dir)

    out_card_dir = os.path.join(out_wk_dir, "dbms-truecards")
    make_dir(out_card_dir)

    query_sqls = get_queries(os.path.join(QDIR, WKDIR))

    for ri,row in df.iterrows():
        exp = row["exp_analyze"]
        qname = row["qname"] + str(ri)
        exp = eval(str(exp))

        est_join_order_sql, est_join_ops, scan_ops = get_pg_join_order(None,
                exp)
        true_cards = get_cards(exp)

        # print(true_cards)
        # pdb.set_trace()

        leading_hint = get_leading_hint(None, exp)

        if row["qname"] in query_sqls:
            sql = query_sqls[row["qname"]]

            out_name = os.path.join(out_cost_dir_default, row["qname"])
            with open(out_name, "w") as f:
                f.write("EXPLAIN (format json) " + sql)

            # Using regular expression to replace the string between FROM and
            # WHERE
            sql_fixed = re.sub(r"FROM.*?WHERE", f"FROM {est_join_order_sql} WHERE",
                    sql, flags=re.DOTALL)

            cost_sql = get_pghint_modified_sql(sql_fixed,
                    {},
                    est_join_ops, leading_hint, scan_ops)

            out_name = os.path.join(out_cost_dir, row["qname"])

            with open(out_name, "w") as f:
                f.write(cost_sql)

            card_sql = get_pghint_modified_sql(sql_fixed,
                    true_cards,
                    est_join_ops, leading_hint, scan_ops)

            out_name = os.path.join(out_card_dir, row["qname"])
            with open(out_name, "w") as f:
                f.write(card_sql)
