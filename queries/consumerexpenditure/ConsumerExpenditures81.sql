SELECT MAX("HOUSEHOLDS"."HOUSEHOLD_ID") as agg_0, MIN("EXPENDITURES"."GIFT") as agg_1, COUNT(*) as agg_2 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."EXPENDITURE_ID" <= 454386