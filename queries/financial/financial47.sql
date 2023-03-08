SELECT MAX("loan"."amount") as agg_0, COUNT(*) as agg_1, MAX("loan"."amount" + "loan"."duration") as agg_2 FROM "loan" LEFT OUTER JOIN "account" ON "loan"."account_id" = "account"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id"  WHERE "account"."district_id" >= 217 AND "loan"."duration" BETWEEN 36 AND 60 AND "loan"."status" = 'D' AND ("trans"."operation" != 'PREVOD NA UCET' OR "trans"."account" <= 15338977.9035152) AND "account"."frequency" LIKE '%TYDNE%'