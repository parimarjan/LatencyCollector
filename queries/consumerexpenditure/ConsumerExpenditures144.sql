SELECT SUM("HOUSEHOLDS"."INCOME_RANK_4" + "HOUSEHOLDS"."INCOME_RANK_2") as agg_0, AVG("HOUSEHOLDS"."INCOME_RANK" + "HOUSEHOLDS"."INCOME_RANK_4") as agg_1 FROM "HOUSEHOLDS"  WHERE "HOUSEHOLDS"."INCOME_RANK_2" <= 0.7193651977089327 AND "HOUSEHOLDS"."INCOME_RANK_4" <= 0.1470101700003023 AND "HOUSEHOLDS"."AGE_REF" <= 38 AND "HOUSEHOLDS"."HOUSEHOLD_ID" BETWEEN 3424903 AND 4027442 AND ("HOUSEHOLDS"."INCOME_RANK_3" >= 0.4688266481903806 OR "HOUSEHOLDS"."INCOME_RANK_5" <= 0.9125053871045032 OR "HOUSEHOLDS"."INCOME_RANK_3" >= 0.006869380523000601) AND "HOUSEHOLDS"."YEAR" = 2018