SELECT SUM("lineorder"."lo_tax" + "lineorder"."lo_quantity") as agg_0 FROM "dim_date" LEFT OUTER JOIN "lineorder" ON "dim_date"."d_datekey" = "lineorder"."lo_orderdate" LEFT OUTER JOIN "customer" ON "lineorder"."lo_custkey" = "customer"."c_custkey" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey" LEFT OUTER JOIN "supplier" ON "lineorder"."lo_suppkey" = "supplier"."s_suppkey"  WHERE "lineorder"."lo_shipmode" IN ('AIR') AND "supplier"."s_name" IN ('Supplier#000002661', 'Supplier#000002662', 'Supplier#000002659', 'Supplier#000002665', 'Supplier#000002672', 'Supplier#000002666') AND "supplier"."s_nation" NOT LIKE '%RUS%SIA%' AND "dim_date"."d_weekdayfl" BETWEEN 0 AND 1