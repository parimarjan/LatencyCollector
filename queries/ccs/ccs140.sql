SELECT COUNT(*) as agg_0, MIN("transactions_1k"."TransactionID") as agg_1, SUM("transactions_1k"."CardID") as agg_2 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "products"."Description" = 'Servisní poplatek(Manual)' AND "customers"."Currency" LIKE '%C%ZK%' AND ("gasstations"."ChainID" BETWEEN 2 AND 3 OR ("gasstations"."Country" IN ('SVK') AND "gasstations"."ChainID" <= 2))