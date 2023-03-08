SELECT SUM("HOUSEHOLDS"."INCOME_RANK") as agg_0, AVG("HOUSEHOLDS"."INCOME_RANK_3" + "EXPENDITURES"."PRODUCT_CODE") as agg_1, SUM("EXPENDITURES"."PRODUCT_CODE") as agg_2 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 3135787 AND ("HOUSEHOLD_MEMBERS"."AGE" != 6 OR "HOUSEHOLD_MEMBERS"."AGE" != 52) AND "HOUSEHOLDS"."HOUSEHOLD_ID" <= 6004319 AND "EXPENDITURES"."PRODUCT_CODE" <= 9411 AND "HOUSEHOLD_MEMBERS"."YEAR" >= 2017 AND "EXPENDITURES"."IS_TRAINING" <= 1