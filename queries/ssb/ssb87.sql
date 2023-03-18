SELECT MAX("lineorder"."lo_quantity") as agg_0 FROM "customer" LEFT OUTER JOIN "lineorder" ON "customer"."c_custkey" = "lineorder"."lo_custkey" LEFT OUTER JOIN "supplier" ON "lineorder"."lo_suppkey" = "supplier"."s_suppkey"  WHERE "supplier"."s_nation" IN ('EGYPT', 'CHINA', 'INDONESIA', 'FRANCE', 'ETHIOPIA', 'CANADA', 'GERMANY', 'INDIA', 'SAUDI ARABIA') AND "supplier"."s_name" IN ('Supplier#000002662')