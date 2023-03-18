SELECT MAX("district"."A16") as agg_0, MIN("district"."A15") as agg_1 FROM "account" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id"  WHERE "account"."account_id" BETWEEN 60193 AND 95287 AND ("account"."frequency" LIKE '%POP%LATEK%' OR ("account"."frequency" NOT LIKE '%TYDN%E%' AND "account"."frequency" != 'POPLATEK TYDNE'))