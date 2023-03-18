SELECT SUM("customers"."CustomerID" + "yearmonth"."Consumption") as agg_0 FROM "gasstations" LEFT OUTER JOIN "transactions_1k" ON "gasstations"."GasStationID" = "transactions_1k"."GasStationID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "products" ON "transactions_1k"."ProductID" = "products"."ProductID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "products"."ProductID" >= 580 AND ("gasstations"."GasStationID" BETWEEN 261 AND 5514 OR ("gasstations"."GasStationID" <= 2838 AND "gasstations"."GasStationID" <= 504)) AND "yearmonth"."Date" = 201227