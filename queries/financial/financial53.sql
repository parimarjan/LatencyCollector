SELECT MAX("disp"."account_id" + "trans"."trans_id") as agg_0 FROM "account" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id"  WHERE "account"."district_id" BETWEEN 202 AND 210