SELECT MIN("HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" + "HOUSEHOLD_MEMBERS"."YEAR") as agg_0, MAX("HOUSEHOLD_MEMBERS"."MARITAL") as agg_1, MAX("HOUSEHOLD_MEMBERS"."YEAR") as agg_2 FROM "HOUSEHOLD_MEMBERS"  WHERE "HOUSEHOLD_MEMBERS"."YEAR" <= 2015 AND ("HOUSEHOLD_MEMBERS"."MARITAL" <= 3 OR "HOUSEHOLD_MEMBERS"."MARITAL" != 5) AND "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" >= 3909559 AND "HOUSEHOLD_MEMBERS"."SEX" <= 1 AND ("HOUSEHOLD_MEMBERS"."AGE" = 52 OR "HOUSEHOLD_MEMBERS"."AGE" >= 34 OR "HOUSEHOLD_MEMBERS"."AGE" = 64) AND "HOUSEHOLD_MEMBERS"."WORK_STATUS" >= 1.0