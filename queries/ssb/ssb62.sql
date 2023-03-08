SELECT MAX("dim_date"."d_year" + "lineorder"."lo_commitdate") as agg_0 FROM "customer" LEFT OUTER JOIN "lineorder" ON "customer"."c_custkey" = "lineorder"."lo_custkey" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey"  WHERE ("dim_date"."d_dayofweek" IN ('Saturday', 'Thursday', 'Wednesday', 'Sunday', 'Tuesday', 'Monday') OR "dim_date"."d_dayofweek" LIKE '%Sunday%' OR "dim_date"."d_dayofweek" NOT LIKE '%Thur%sday%') AND "customer"."c_custkey" <= 24990