SELECT MIN("disp"."account_id") as agg_0, MIN("disp"."account_id" + "client"."district_id") as agg_1 FROM "card" LEFT OUTER JOIN "disp" ON "card"."disp_id" = "disp"."disp_id" LEFT OUTER JOIN "client" ON "disp"."client_id" = "client"."client_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id"  WHERE "card"."type" NOT LIKE '%junio%r%'