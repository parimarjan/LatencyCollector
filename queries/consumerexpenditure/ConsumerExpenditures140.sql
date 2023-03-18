SELECT MAX("EXPENDITURES"."GIFT") as agg_0, MAX("EXPENDITURES"."PRODUCT_CODE") as agg_1 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_5" >= 0.7482506690040154 AND "HOUSEHOLDS"."INCOME_RANK_4" >= 0.42014698140298734 AND "HOUSEHOLDS"."INCOME_RANK_2" BETWEEN 0.40604098498486574 AND 0.5637854377374325 AND "EXPENDITURES"."YEAR" BETWEEN 2016 AND 2019 AND "EXPENDITURES"."IS_TRAINING" <= 1