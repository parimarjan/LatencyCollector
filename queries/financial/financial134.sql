SELECT MAX("account"."district_id") as agg_0, AVG("loan"."account_id" + "loan"."loan_id") as agg_1 FROM "loan" LEFT OUTER JOIN "account" ON "loan"."account_id" = "account"."account_id"  WHERE "loan"."amount" >= 111258 AND "loan"."date" IN ('1997-06-19', '1997-03-07', '1997-05-03', '1994-12-21', '1998-04-19')