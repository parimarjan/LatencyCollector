SELECT MIN("HOUSEHOLDS"."INCOME_RANK_3" + "HOUSEHOLD_MEMBERS"."MARITAL") as agg_0 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."COST" BETWEEN 1.1162093555828616 AND 23.527703770292366 AND "HOUSEHOLDS"."HOUSEHOLD_ID" BETWEEN 4335279 AND 4673625