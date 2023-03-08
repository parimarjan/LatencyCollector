SELECT SUM("customers"."CustomerID" + "transactions_1k"."TransactionID") as agg_0, SUM("transactions_1k"."GasStationID" + "transactions_1k"."Price") as agg_1 FROM "transactions_1k" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID"  WHERE "gasstations"."Country" IN ('SVK') AND "gasstations"."Segment" != 'Premium' AND "transactions_1k"."Date" NOT LIKE '%2012-08-25%'