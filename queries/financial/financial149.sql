SELECT MAX("loan"."amount") as agg_0, AVG("disp"."account_id") as agg_1, COUNT(*) as agg_2 FROM "disp" LEFT OUTER JOIN "client" ON "disp"."client_id" = "client"."client_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id"  WHERE "account"."frequency" LIKE '%POPLATEK%' AND "loan"."status" IN ('C') AND "disp"."type" NOT LIKE '%OWNE%R%'