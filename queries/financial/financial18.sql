SELECT SUM("trans"."amount") as agg_0, SUM("trans"."account_id" + "loan"."duration") as agg_1, MAX("loan"."loan_id" + "loan"."account_id") as agg_2 FROM "account" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id"  WHERE "trans"."operation" NOT LIKE '%UC%TU%' AND "disp"."type" = 'OWNER' AND "disp"."client_id" >= 103353 AND "disp"."disp_id" BETWEEN 93010 AND 121484 AND "account"."frequency" NOT LIKE '%OBRATU%' AND "trans"."type" LIKE '%VYBER%'