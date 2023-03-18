SELECT COUNT(*) as agg_0, SUM("HOUSEHOLDS"."INCOME_RANK_2" + "EXPENDITURES"."COST") as agg_1 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE ("EXPENDITURES"."COST" <= 27.349523252449963 OR "EXPENDITURES"."PRODUCT_CODE" <= 657597 OR "EXPENDITURES"."COST" BETWEEN 17.996447830812386 AND 20.586896870764374) AND "EXPENDITURES"."HOUSEHOLD_ID" BETWEEN 4190127 AND 5203296 AND ("HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.38985446384788935 OR "HOUSEHOLDS"."INCOME_RANK_3" BETWEEN 0.11349731538639918 AND 0.9124798134186806) AND "HOUSEHOLDS"."INCOME_RANK_1" >= 0.5436430558691888