SELECT COUNT(*) as agg_0, AVG("HOUSEHOLDS"."INCOME_RANK_3" + "HOUSEHOLDS"."HOUSEHOLD_ID") as agg_1, MAX("HOUSEHOLD_MEMBERS"."MARITAL") as agg_2 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLDS"."INCOME_RANK_MEAN" BETWEEN 0.14064988008037332 AND 0.6099895823179117 AND ("HOUSEHOLD_MEMBERS"."SEX" BETWEEN 1 AND 2 OR "HOUSEHOLD_MEMBERS"."SEX" <= 2 OR "HOUSEHOLD_MEMBERS"."SEX" = 2) AND ("HOUSEHOLDS"."INCOME_RANK" >= 0.0001419854312541716 OR "HOUSEHOLDS"."INCOME_RANK" >= 0.474349512370697) AND "HOUSEHOLDS"."AGE_REF" BETWEEN 43 AND 46 AND "HOUSEHOLDS"."INCOME_RANK_3" <= 0.9524548108316564