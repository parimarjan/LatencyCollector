SELECT MIN("HOUSEHOLDS"."YEAR" + "EXPENDITURES"."EXPENDITURE_ID") as agg_0, COUNT(*) as agg_1, SUM("HOUSEHOLD_MEMBERS"."SEX" + "EXPENDITURES"."HOUSEHOLD_ID") as agg_2 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" >= 5632900 AND ("HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.8526388200916843 OR ("HOUSEHOLDS"."INCOME_RANK_MEAN" BETWEEN 0.5175279077420494 AND 0.9032676636449086 AND "HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.5401426219927354)) AND "EXPENDITURES"."PRODUCT_CODE" BETWEEN 137467 AND 148653 AND "EXPENDITURES"."MONTH" = 10