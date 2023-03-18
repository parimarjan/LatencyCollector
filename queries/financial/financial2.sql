SELECT AVG("loan"."account_id") as agg_0, COUNT(*) as agg_1, MAX("loan"."payments") as agg_2 FROM "trans" LEFT OUTER JOIN "account" ON "trans"."account_id" = "account"."account_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id"  WHERE "trans"."account" >= 1875136.7346164663 AND "trans"."type" NOT LIKE '%V%YBER%'