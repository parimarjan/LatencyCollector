SELECT COUNT(*) as agg_0 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_1" <= 0.5149971338523663 AND "EXPENDITURES"."PRODUCT_CODE" >= 16505