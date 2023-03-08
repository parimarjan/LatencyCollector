SELECT MIN("transactions_1k"."Price") as agg_0, AVG("transactions_1k"."CardID" + "transactions_1k"."GasStationID") as agg_1, SUM("gasstations"."ChainID") as agg_2 FROM "gasstations" LEFT OUTER JOIN "transactions_1k" ON "gasstations"."GasStationID" = "transactions_1k"."GasStationID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID"  WHERE "gasstations"."Country" NOT LIKE '%SVK%' AND "products"."Description" != 'Vydání karty' AND "gasstations"."Segment" = 'Premium' AND "gasstations"."Segment" IN ('Premium', 'Value for money', 'Noname', 'Other')