SELECT AVG("district"."A11") as agg_0, MAX("district"."A14") as agg_1 FROM "district" LEFT OUTER JOIN "account" ON "district"."district_id" = "account"."district_id" LEFT OUTER JOIN "client" ON "district"."district_id" = "client"."district_id"  WHERE "account"."frequency" IN ('POPLATEK MESICNE') AND ("account"."frequency" LIKE '%TYDNE%' OR "account"."frequency" NOT LIKE '%OBRATU%')