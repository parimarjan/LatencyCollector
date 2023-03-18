SELECT AVG("lineorder"."lo_commitdate") as agg_0 FROM "part" LEFT OUTER JOIN "lineorder" ON "part"."p_partkey" = "lineorder"."lo_partkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey" LEFT OUTER JOIN "supplier" ON "lineorder"."lo_suppkey" = "supplier"."s_suppkey"  WHERE "supplier"."s_nation" NOT LIKE '%MOROCCO%'