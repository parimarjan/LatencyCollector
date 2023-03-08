SELECT AVG("account"."district_id" + "disp"."client_id") as agg_0 FROM "card" LEFT OUTER JOIN "disp" ON "card"."disp_id" = "disp"."disp_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id"  WHERE "card"."card_id" >= 207 AND "account"."date" != '1994-03-14' AND "card"."type" IN ('junior', 'ld') AND "account"."district_id" <= 473 AND "card"."type" IN ('classic')