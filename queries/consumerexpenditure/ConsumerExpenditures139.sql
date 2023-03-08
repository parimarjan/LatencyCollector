SELECT MAX("HOUSEHOLD_MEMBERS"."SEX") as agg_0, AVG("EXPENDITURES"."GIFT") as agg_1 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."AGE_REF" BETWEEN 15 AND 42 AND "HOUSEHOLD_MEMBERS"."AGE" BETWEEN 57 AND 60