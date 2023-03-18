SELECT MAX("yearmonth"."CustomerID" + "gasstations"."ChainID") as agg_0, AVG("gasstations"."ChainID") as agg_1 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "transactions_1k"."Date" = '2012-08-25' AND "gasstations"."Segment" LIKE '%fo%r%'