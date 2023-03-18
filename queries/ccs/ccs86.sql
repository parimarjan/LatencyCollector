SELECT MAX("transactions_1k"."CardID" + "products"."ProductID") as agg_0 FROM "gasstations" LEFT OUTER JOIN "transactions_1k" ON "gasstations"."GasStationID" = "transactions_1k"."GasStationID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID"  WHERE ("gasstations"."ChainID" BETWEEN 29 AND 244 OR "gasstations"."GasStationID" >= 151) AND ("products"."Description" = 'Vignette ordering' OR "products"."Description" LIKE '%Servi%ce%') AND "products"."Description" IN ('Katalyzátor', 'Ostatni zbozi', 'Tisk reportu', 'Provozní poplatek', 'Ostatné sl.', 'Potraviny', 'Vratné obaly') AND ("customers"."CustomerID" <= 741630 OR ("customers"."CustomerID" >= 146843 AND "customers"."CustomerID" BETWEEN 959623 AND 1356013))