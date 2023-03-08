SELECT COUNT(*) as agg_0 FROM "transactions_1k" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "gasstations"."ChainID" BETWEEN 3 AND 28 AND "customers"."Segment" = 'KAM' AND "products"."Description" NOT LIKE '%CCS%' AND "products"."ProductID" >= 206 AND "transactions_1k"."Date" IN ('2012-08-25', '2012-08-23')