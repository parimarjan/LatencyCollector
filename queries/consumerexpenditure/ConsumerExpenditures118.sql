SELECT AVG("HOUSEHOLDS"."INCOME_RANK" + "HOUSEHOLD_MEMBERS"."AGE") as agg_0 FROM "HOUSEHOLDS" LEFT OUTER JOIN "EXPENDITURES" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "EXPENDITURES"."HOUSEHOLD_ID" LEFT OUTER JOIN "HOUSEHOLD_MEMBERS" ON "HOUSEHOLDS"."HOUSEHOLD_ID" = "HOUSEHOLD_MEMBERS"."HOUSEHOLD_ID"  WHERE ("HOUSEHOLDS"."INCOME_RANK_4" BETWEEN 0.11201427427473676 AND 0.8418199825662542 OR ("HOUSEHOLDS"."AGE_REF" BETWEEN 23 AND 28 AND "HOUSEHOLDS"."INCOME_RANK_4" BETWEEN 0.5496936103834869 AND 0.9194499629903801)) AND "HOUSEHOLDS"."INCOME_RANK" BETWEEN 0.572658400565824 AND 0.9801095027355783 AND "HOUSEHOLDS"."HOUSEHOLD_ID" >= 4863450