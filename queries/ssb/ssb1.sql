SELECT MAX("lineorder"."lo_custkey" + "lineorder"."lo_quantity") as agg_0, SUM("lineorder"."lo_partkey" + "lineorder"."lo_custkey") as agg_1 FROM "lineorder" LEFT OUTER JOIN "customer" ON "lineorder"."lo_custkey" = "customer"."c_custkey"  WHERE ("lineorder"."lo_shipmode" IN ('TRUCK', 'REG AIR', 'FOB', 'SHIP', 'AIR') OR ("lineorder"."lo_custkey" <= 30917 AND "lineorder"."lo_shipmode" NOT LIKE '%TRUCK%')) AND "customer"."c_nation" NOT LIKE '%A%LGERIA%' AND "customer"."c_mktsegment" LIKE '%FURNITURE%' AND ("lineorder"."lo_orderpriority" IN ('3-MEDIUM') OR ("lineorder"."lo_orderpriority" LIKE '%5-LOW%' AND "lineorder"."lo_orderpriority" = '1-URGENT')) AND "customer"."c_region" LIKE '%EUROPE%' AND ("customer"."c_custkey" >= 17302 OR ("customer"."c_custkey" >= 19854 AND "customer"."c_custkey" BETWEEN 30071 AND 46418))