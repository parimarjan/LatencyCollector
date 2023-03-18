SELECT MAX("HOUSEHOLD_MEMBERS"."SEX" + "HOUSEHOLD_MEMBERS"."WORK_STATUS") as agg_0 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.1421453640017688 AND "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 3791021 AND ("HOUSEHOLDS"."HOUSEHOLD_ID" BETWEEN 5027519 AND 5941313 OR "HOUSEHOLDS"."INCOME_RANK_1" <= 0.3974137558275537 OR "HOUSEHOLDS"."HOUSEHOLD_ID" <= 4096020) AND "HOUSEHOLD_MEMBERS"."SEX" BETWEEN 1 AND 2 AND "HOUSEHOLD_MEMBERS"."AGE" >= 10 AND "HOUSEHOLDS"."AGE_REF" BETWEEN 48 AND 59