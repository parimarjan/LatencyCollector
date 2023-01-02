import sys
sys.path.append(".")
import argparse
import psycopg2 as pg
# from utils.utils import *
from multiprocessing import Pool, cpu_count
import json
import pickle
import pdb

CREATE_FMT = """CREATE TABLE {TAB}_am (
  LIKE {TAB} INCLUDING ALL
) USING columnar;"""

INSERT_FMT = """INSERT INTO {TAB}_am SELECT * FROM {TAB};"""

def read_flags():
    parser = argparse.ArgumentParser()

    parser.add_argument("--db_name", type=str, required=False,
            default="imdb")
    parser.add_argument("--db_host", type=str, required=False,
            default="localhost")
    parser.add_argument("--user", type=str, required=False,
            default="ceb")
    parser.add_argument("--pwd", type=str, required=False,
            default="password")
    parser.add_argument("--port", type=str, required=False,
            default=5500)
    parser.add_argument("--sampling_percentage", type=int, required=False,
            default=10)
    parser.add_argument("--sampling_type", type=str, required=False, default="ss")

    return parser.parse_args()

def main():

    tables = [
            # "title","cast_info",
            "name", "aka_name", "keyword", "movie_info",
            "movie_companies", "company_type", "kind_type", "info_type",
            "role_type", "company_name", "char_name",
            "link_type", "movie_info_idx", "comp_cast_type",
            "person_info",
            "movie_link", "movie_keyword",
            "aka_title", "complete_cast"
            ]
    con = pg.connect(user=args.user, host=args.db_host, port=args.port,
            password=args.pwd, database=args.db_name)
    cursor = con.cursor()

    for tab in tables:
        create_sql = CREATE_FMT.format(TAB=tab)
        print(create_sql)
        cursor.execute(create_sql)

        insert_sql = INSERT_FMT.format(TAB=tab)
        print(insert_sql)
        cursor.execute(insert_sql)

        analyze_sql = "ANALYZE {}_am".format(tab)
        cursor.execute(analyze_sql)

        con.commit()

    con.close()
    cursor.close()

    pdb.set_trace()

args = read_flags()
main()
