SELECT AVG("part"."p_size" + "lineorder"."lo_orderdate") as agg_0 FROM "part" LEFT OUTER JOIN "lineorder" ON "part"."p_partkey" = "lineorder"."lo_partkey"  WHERE "part"."p_color" != 'rosy' AND "lineorder"."lo_ordertotalprice" BETWEEN 7817000 AND 26628743