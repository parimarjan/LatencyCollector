SELECT SUM("lineorder"."lo_suppkey") as agg_0 FROM "lineorder" LEFT OUTER JOIN "customer" ON "lineorder"."lo_custkey" = "customer"."c_custkey"  WHERE "customer"."c_city" IN ('JAPAN    5', 'IRAQ     6', 'ROMANIA  4', 'FRANCE   5', 'MOZAMBIQU4') AND "customer"."c_region" NOT LIKE '%EUROPE%' AND "lineorder"."lo_partkey" BETWEEN 273 AND 63065 AND "customer"."c_region" LIKE '%EURO%PE%'