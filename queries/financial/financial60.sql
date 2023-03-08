SELECT COUNT(*) as agg_0 FROM "disp" LEFT OUTER JOIN "client" ON "disp"."client_id" = "client"."client_id" LEFT OUTER JOIN "district" ON "client"."district_id" = "district"."district_id" LEFT OUTER JOIN "card" ON "disp"."disp_id" = "card"."disp_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id"  WHERE "card"."type" != 'classic' AND "account"."district_id" >= 488 AND "disp"."account_id" >= 67924 AND ("disp"."type" LIKE '%OWN%ER%' OR "disp"."client_id" >= 66600) AND "card"."type" NOT LIKE '%ld%'