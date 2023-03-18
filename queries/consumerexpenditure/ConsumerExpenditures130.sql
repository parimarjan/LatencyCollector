SELECT MAX("HOUSEHOLDS"."HOUSEHOLD_ID") as agg_0, SUM("HOUSEHOLD_MEMBERS"."WORK_STATUS") as agg_1, MIN("HOUSEHOLDS"."INCOME_RANK_1" + "HOUSEHOLDS"."AGE_REF") as agg_2 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_MEAN" BETWEEN 0.3643896627368866 AND 0.8177307213907269 OR ("HOUSEHOLDS"."INCOME_RANK_MEAN" BETWEEN 0.21982420413151557 AND 0.6257202816858678 AND "HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.02573484185009287)