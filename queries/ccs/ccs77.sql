SELECT MIN("transactions_1k"."GasStationID" + "yearmonth"."Date") as agg_0, AVG("customers"."CustomerID") as agg_1 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "transactions_1k"."Date" != '2012-08-24' AND "gasstations"."Country" != 'SVK' AND "products"."Description" IN ('Service charge', 'Servisní poplatek', 'Umývanie voz') AND "customers"."CustomerID" <= 431274 AND "gasstations"."Segment" NOT LIKE '%Discount%'