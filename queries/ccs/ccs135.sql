SELECT MIN("transactions_1k"."TransactionID" + "transactions_1k"."Amount") as agg_0, MAX("transactions_1k"."Amount") as agg_1 FROM "transactions_1k" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID"  WHERE "gasstations"."Country" IN ('CZE')