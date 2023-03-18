SELECT SUM("loan"."account_id" + "disp"."account_id") as agg_0 FROM "loan" LEFT OUTER JOIN "account" ON "loan"."account_id" = "account"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id"  WHERE "district"."A2" NOT LIKE '%Teplice%' AND ("trans"."operation" IS NULL OR "trans"."operation" LIKE '%U%CTU%' OR "trans"."operation" NOT LIKE '%PREVOD%') AND "trans"."operation" NOT LIKE '%VKLAD%' AND ("district"."A3" LIKE '%no%rth%' OR ("district"."A7" = 6 AND "district"."A3" IN ('north Moravia', 'west Bohemia', 'south Moravia', 'Prague', 'south Bohemia', 'central Bohemia')))