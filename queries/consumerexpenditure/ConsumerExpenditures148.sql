SELECT MAX("HOUSEHOLDS"."AGE_REF") as agg_0, AVG("EXPENDITURES"."HOUSEHOLD_ID") as agg_1 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."PRODUCT_CODE" BETWEEN 136239 AND 741874 AND "HOUSEHOLDS"."INCOME_RANK_1" >= 0.003598674679668672