SELECT COUNT(*) as agg_0 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."MONTH" BETWEEN 4 AND 7 AND ("HOUSEHOLD_MEMBERS"."MARITAL" = 5 OR "HOUSEHOLD_MEMBERS"."SEX" BETWEEN 1 AND 2 OR "HOUSEHOLD_MEMBERS"."MARITAL" BETWEEN 1 AND 5) AND "HOUSEHOLD_MEMBERS"."WORK_STATUS" >= 2.767165147823455 AND "HOUSEHOLD_MEMBERS"."YEAR" >= 2016 AND "HOUSEHOLDS"."INCOME_RANK_4" BETWEEN 0.08040332866797953 AND 0.4576409742315151