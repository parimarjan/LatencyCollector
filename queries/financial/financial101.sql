SELECT SUM("account"."account_id") as agg_0 FROM "trans" LEFT OUTER JOIN "account" ON "trans"."account_id" = "account"."account_id"  WHERE "trans"."operation" = 'VYBER KARTOU' AND "account"."frequency" = 'POPLATEK MESICNE' AND "trans"."balance" <= 25098