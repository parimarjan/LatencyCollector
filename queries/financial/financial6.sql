SELECT SUM("disp"."client_id" + "trans"."account_id") as agg_0, MIN("loan"."duration") as agg_1, SUM("loan"."payments" + "trans"."account_id") as agg_2 FROM "loan" LEFT OUTER JOIN "account" ON "loan"."account_id" = "account"."account_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "card" ON "disp"."disp_id" = "card"."disp_id"  WHERE "account"."account_id" <= 60052 AND "card"."type" IN ('ld') AND "account"."frequency" = 'POPLATEK TYDNE' AND "account"."frequency" LIKE '%POPLATE%K%' AND "loan"."status" = 'A' AND "loan"."loan_id" >= 6470