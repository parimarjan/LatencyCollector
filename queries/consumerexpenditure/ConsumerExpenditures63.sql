SELECT SUM("EXPENDITURES"."COST") as agg_0 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."EXPENDITURE_ID" BETWEEN 529022 AND 1111853