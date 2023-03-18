SELECT COUNT(*) as agg_0 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."GIFT" BETWEEN 0 AND 1 AND "HOUSEHOLDS"."HOUSEHOLD_ID" <= 6754865 AND "HOUSEHOLDS"."INCOME_RANK_3" >= 0.15539518791938392 AND "EXPENDITURES"."COST" <= 0.9348238318408133 AND ("HOUSEHOLDS"."AGE_REF" = 55 OR ("HOUSEHOLDS"."YEAR" <= 2015 AND "HOUSEHOLDS"."AGE_REF" BETWEEN 54 AND 74)) AND "HOUSEHOLDS"."INCOME_RANK_2" BETWEEN 0.12075765227859052 AND 0.22648491538356189