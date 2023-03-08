SELECT SUM("lineorder"."lo_shippriority" + "lineorder"."lo_linenumber") as agg_0, SUM("lineorder"."lo_partkey" + "dim_date"."d_monthnuminyear") as agg_1, MIN("dim_date"."d_lastdayinweekfl") as agg_2 FROM "supplier" LEFT OUTER JOIN "lineorder" ON "supplier"."s_suppkey" = "lineorder"."lo_suppkey" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey"  WHERE "lineorder"."lo_orderpriority" IN ('1-URGENT', '2-HIGH') AND "dim_date"."d_month" IN ('May', 'March') AND "dim_date"."d_monthnuminyear" BETWEEN 1 AND 5 AND "part"."p_container" = 'JUMBO CASE'