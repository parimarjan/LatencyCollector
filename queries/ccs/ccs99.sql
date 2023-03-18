SELECT SUM("transactions_1k"."ProductID" + "transactions_1k"."TransactionID") as agg_0, COUNT(*) as agg_1 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID"  WHERE "gasstations"."Segment" IN ('Value for money', 'Other', 'Noname', 'Premium') AND "transactions_1k"."Date" IN ('2012-08-24', '2012-08-26') AND "transactions_1k"."CustomerID" >= 955288