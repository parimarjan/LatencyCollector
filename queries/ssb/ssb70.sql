SELECT MAX("lineorder"."lo_custkey" + "lineorder"."lo_commitdate") as agg_0 FROM "lineorder" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey" LEFT OUTER JOIN "customer" ON "lineorder"."lo_custkey" = "customer"."c_custkey" LEFT OUTER JOIN "dim_date" ON "lineorder"."lo_orderdate" = "dim_date"."d_datekey" LEFT OUTER JOIN "supplier" ON "lineorder"."lo_suppkey" = "supplier"."s_suppkey"  WHERE "lineorder"."lo_shipmode" IN ('RAIL', 'SHIP', 'REG AIR', 'TRUCK', 'FOB')