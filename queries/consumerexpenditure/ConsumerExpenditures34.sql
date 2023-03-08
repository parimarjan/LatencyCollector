SELECT SUM("HOUSEHOLDS"."INCOME_RANK_4") as agg_0 FROM "HOUSEHOLD_MEMBERS" LEFT OUTER JOIN "HOUSEHOLDS" ON "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."PRODUCT_CODE" <= 5766 AND "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 4032643 AND "HOUSEHOLDS"."INCOME_RANK_4" >= 0.6456881395080539 AND "HOUSEHOLDS"."INCOME_RANK_MEAN" BETWEEN 0.4429894411263867 AND 0.46489934356416096