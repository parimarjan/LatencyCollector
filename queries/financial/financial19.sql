SELECT AVG("loan"."duration" + "loan"."loan_id") as agg_0, COUNT(*) as agg_1 FROM "loan"  WHERE "loan"."duration" >= 24 AND "loan"."date" IN ('1998-04-19', '1997-03-17', '1997-09-07', '1997-05-03', '1998-07-12', '1994-12-21', '1997-12-28', '1997-04-01') AND "loan"."account_id" BETWEEN 1156 AND 60347 AND "loan"."status" IN ('D')