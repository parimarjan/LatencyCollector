SELECT SUM("lineorder"."lo_linenumber") as agg_0, MIN("lineorder"."lo_linenumber" + "lineorder"."lo_partkey") as agg_1 FROM "customer" LEFT OUTER JOIN "lineorder" ON "customer"."c_custkey" = "lineorder"."lo_custkey" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey"  WHERE "part"."p_container" = 'JUMBO BOX' AND "customer"."c_nation" = 'KENYA' AND "customer"."c_mktsegment" NOT LIKE '%BUILDING%' AND "customer"."c_region" LIKE '%AMERICA%' AND "customer"."c_region" IN ('AMERICA', 'EUROPE')