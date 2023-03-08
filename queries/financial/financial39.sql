SELECT SUM("account"."account_id" + "loan"."amount") as agg_0 FROM "card" LEFT OUTER JOIN "disp" ON "card"."disp_id" = "disp"."disp_id" LEFT OUTER JOIN "client" ON "disp"."client_id" = "client"."client_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id"  WHERE ("account"."frequency" != 'POPLATEK PO OBRATU' OR "account"."district_id" >= 402 OR "account"."frequency" LIKE '%TYD%NE%') AND ("card"."type" LIKE '%%ld%' OR ("card"."issued" IN ('1998-10-11') AND "card"."type" = 'ld')) AND "client"."gender" IN ('F') AND "account"."frequency" != 'POPLATEK PO OBRATU'