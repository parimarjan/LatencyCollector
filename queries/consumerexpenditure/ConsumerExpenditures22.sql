SELECT MAX("HOUSEHOLDS"."INCOME_RANK_2" + "HOUSEHOLDS"."YEAR") as agg_0, COUNT(*) as agg_1 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLD_MEMBERS"."SEX" <= 1 AND "HOUSEHOLD_MEMBERS"."AGE" BETWEEN 24 AND 27 AND "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 3551424