SELECT COUNT(*) as agg_0, AVG("transactions_1k"."Amount") as agg_1 FROM "transactions_1k"  WHERE "transactions_1k"."Time" != '06:24:00' AND "transactions_1k"."Date" LIKE '%2012-%08-26%' AND "transactions_1k"."ProductID" = 2 AND "transactions_1k"."Amount" != 22 AND "transactions_1k"."CardID" <= 507848