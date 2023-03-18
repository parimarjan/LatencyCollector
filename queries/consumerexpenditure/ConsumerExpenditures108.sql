SELECT SUM("EXPENDITURES"."PRODUCT_CODE" + "EXPENDITURES"."MONTH") as agg_0, MIN("HOUSEHOLD_MEMBERS"."YEAR" + "HOUSEHOLD_MEMBERS"."SEX") as agg_1, MAX("EXPENDITURES"."GIFT" + "HOUSEHOLDS"."INCOME_RANK_4") as agg_2 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."IS_TRAINING" = 1