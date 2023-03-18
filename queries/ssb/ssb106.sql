SELECT COUNT(*) as agg_0, MIN("dim_date"."d_weeknuminyear" + "dim_date"."d_holidayfl") as agg_1 FROM "customer" LEFT OUTER JOIN "lineorder" ON "customer"."c_custkey" = "lineorder"."lo_custkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey"  WHERE "dim_date"."d_holidayfl" = 0