SELECT MAX("lineorder"."lo_commitdate") as agg_0, AVG("dim_date"."d_weekdayfl" + "supplier"."s_suppkey") as agg_1, MAX("lineorder"."lo_shippriority") as agg_2 FROM "supplier" LEFT OUTER JOIN "lineorder" ON "supplier"."s_suppkey" = "lineorder"."lo_suppkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey"  WHERE "supplier"."s_nation" NOT LIKE '%FR%ANCE%' AND "lineorder"."lo_supplycost" >= 113027