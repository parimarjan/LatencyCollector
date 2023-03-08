SELECT MIN("lineorder"."lo_commitdate") as agg_0, MAX("part"."p_partkey") as agg_1, AVG("part"."p_size" + "lineorder"."lo_partkey") as agg_2 FROM "part" LEFT OUTER JOIN "lineorder" ON "part"."p_partkey" = "lineorder"."lo_partkey" LEFT OUTER JOIN "customer" ON "lineorder"."lo_custkey" = "customer"."c_custkey"  WHERE "part"."p_name" LIKE '%gainsboro%'