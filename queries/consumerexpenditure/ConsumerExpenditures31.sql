SELECT MIN("EXPENDITURES"."GIFT" + "HOUSEHOLDS"."INCOME_RANK_4") as agg_0, COUNT(*) as agg_1 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."YEAR" = 2018 AND "EXPENDITURES"."EXPENDITURE_ID" BETWEEN 1187639 AND 1504744 AND "EXPENDITURES"."COST" BETWEEN 1.073740655153768 AND 5.042304149198794 AND "EXPENDITURES"."MONTH" = 8 AND "HOUSEHOLD_MEMBERS"."YEAR" != 2016 AND "HOUSEHOLDS"."INCOME_RANK_4" <= 0.9760332407257937