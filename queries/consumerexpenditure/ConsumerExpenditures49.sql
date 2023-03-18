SELECT SUM("HOUSEHOLD_MEMBERS"."SEX" + "HOUSEHOLDS"."INCOME_RANK_2") as agg_0, MAX("HOUSEHOLD_MEMBERS"."AGE") as agg_1 FROM "EXPENDITURES" LEFT OUTER JOIN "HOUSEHOLDS" ON "EXPENDITURES"."HOUSEHOLD_ID" = "HOUSEHOLDS"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID" <= 3304281 AND "HOUSEHOLD_MEMBERS"."YEAR" BETWEEN 2017 AND 2018 AND ("HOUSEHOLDS"."INCOME_RANK_4" <= 0.9879108862996288 OR ("HOUSEHOLDS"."INCOME_RANK_4" >= 0.6097317308405238 AND "HOUSEHOLDS"."INCOME_RANK_4" BETWEEN 0.31961505049676764 AND 0.9957162672904795)) AND "HOUSEHOLDS"."INCOME_RANK_1" BETWEEN 0.30602741227043045 AND 0.5934203618848383