SELECT MAX("HOUSEHOLDS"."INCOME_RANK" + "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID") as agg_0, SUM("HOUSEHOLDS"."INCOME_RANK_4" + "HOUSEHOLD_MEMBERS"."SEX") as agg_1 FROM "HOUSEHOLDS" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID"  WHERE "EXPENDITURES"."HOUSEHOLD_ID" <= 5163766 AND "HOUSEHOLD_MEMBERS"."WORK_STATUS" BETWEEN 1.0 AND 2.0 AND "HOUSEHOLDS"."INCOME_RANK_4" >= 0.047663544812323766 AND "HOUSEHOLDS"."INCOME_RANK_MEAN" >= 0.3346342932879333 AND "HOUSEHOLD_MEMBERS"."YEAR" = 2015