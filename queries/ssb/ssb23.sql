SELECT MAX("lineorder"."lo_commitdate") as agg_0, SUM("lineorder"."lo_partkey" + "part"."p_size") as agg_1, COUNT(*) as agg_2 FROM "supplier" LEFT OUTER JOIN "lineorder" ON "supplier"."s_suppkey" = "lineorder"."lo_suppkey" LEFT OUTER JOIN "part" ON "lineorder"."lo_partkey" = "part"."p_partkey"  WHERE "supplier"."s_phone" = '27-940-483-5702' AND "part"."p_container" IN ('JUMBO CAN', 'WRAP CAN', 'WRAP JAR', 'LG BOX') AND "part"."p_partkey" BETWEEN 94981 AND 125854 AND "part"."p_name" IN ('aquamarine black') AND "supplier"."s_suppkey" >= 3416 AND "lineorder"."lo_shipmode" IN ('TRUCK', 'FOB', 'AIR', 'RAIL', 'SHIP')