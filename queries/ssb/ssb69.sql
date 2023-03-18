SELECT COUNT(*) as agg_0, SUM("customer"."c_custkey") as agg_1, COUNT(*) as agg_2 FROM "customer" LEFT OUTER JOIN "lineorder" ON "customer"."c_custkey" = "lineorder"."lo_custkey" LEFT OUTER JOIN "supplier" ON "lineorder"."lo_suppkey" = "supplier"."s_suppkey"  WHERE "supplier"."s_region" IN ('AFRICA', 'EUROPE') AND ("customer"."c_custkey" >= 58775 OR ("customer"."c_custkey" >= 10746 AND "customer"."c_custkey" <= 21749)) AND "lineorder"."lo_orderpriority" NOT LIKE '%1-URGEN%T%' AND "customer"."c_city" = 'UNITED KI6'