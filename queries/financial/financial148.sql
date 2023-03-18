SELECT MIN("district"."A14" + "district"."A15") as agg_0, MAX("account"."account_id") as agg_1 FROM "trans" LEFT OUTER JOIN "account" ON "trans"."account_id" = "account"."account_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id"  WHERE "district"."A3" LIKE '%north%' AND "account"."frequency" NOT LIKE '%OBRATU%' AND ("loan"."date" IN ('1998-04-19', '1997-05-03', '1994-12-21', '1997-12-28', '1997-06-19', '1998-07-12', '1997-04-01', '1997-09-07', '1997-03-17') OR ("loan"."account_id" BETWEEN 685 AND 6545 AND "loan"."date" IN ('1997-04-01', '1997-03-17', '1998-04-19', '1998-07-12', '1997-05-03', '1997-12-28', '1997-06-19')))