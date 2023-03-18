SELECT AVG("EXPENDITURES"."PRODUCT_CODE") as agg_0 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE ("HOUSEHOLD_MEMBERS"."YEAR" >= 2018 OR "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 6486507) AND "EXPENDITURES"."HOUSEHOLD_ID" BETWEEN 3315571 AND 4000958