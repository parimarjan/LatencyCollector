SELECT AVG("HOUSEHOLDS"."INCOME_RANK") as agg_0 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_3" BETWEEN 0.2472411347417069 AND 0.5946897208789483 AND "EXPENDITURES"."GIFT" BETWEEN 0 AND 1 AND "HOUSEHOLDS"."HOUSEHOLD_ID" <= 3336158 AND "HOUSEHOLD_MEMBERS"."MARITAL" <= 1 AND "EXPENDITURES"."MONTH" <= 1 AND "HOUSEHOLD_MEMBERS"."AGE" BETWEEN 11 AND 28