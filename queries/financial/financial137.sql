SELECT MIN("district"."A13" + "loan"."amount") as agg_0, MAX("loan"."payments" + "disp"."disp_id") as agg_1, MAX("district"."A10" + "district"."district_id") as agg_2 FROM "client" LEFT OUTER JOIN "disp" ON "client"."client_id" = "disp"."client_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id"  WHERE "district"."A3" = 'east Bohemia' AND "loan"."amount" <= 60316 AND "district"."A7" BETWEEN 8 AND 10