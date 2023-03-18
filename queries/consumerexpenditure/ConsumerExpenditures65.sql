SELECT COUNT(*) as agg_0, MAX("EXPENDITURES"."IS_TRAINING") as agg_1, COUNT(*) as agg_2 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."EXPENDITURE_ID" <= 391592 AND "HOUSEHOLD_MEMBERS"."MARITAL" >= 5 AND "HOUSEHOLDS"."INCOME_RANK_1" <= 0.8072168415961859 AND "EXPENDITURES"."HOUSEHOLD_ID" >= 5934335