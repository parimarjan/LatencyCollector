SELECT AVG("transactions_1k"."TransactionID") as agg_0, COUNT(*) as agg_1, COUNT(*) as agg_2 FROM "customers" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID"  WHERE "customers"."Segment" NOT LIKE '%KAM%' AND "customers"."Currency" = 'CZK' AND "products"."Description" IN ('Provozní poplatek', 'Ostatni zbozi', 'Tisk reportu', 'Service charge', 'Umývanie voz', 'Vratné obaly', 'Servisní poplatek') AND "customers"."Currency" LIKE '%CZK%' AND "gasstations"."Country" IN ('CZE') AND "transactions_1k"."Date" LIKE '%2012%-08-24%'