SELECT MIN("transactions_1k"."GasStationID" + "yearmonth"."CustomerID") as agg_0, SUM("yearmonth"."Date" + "transactions_1k"."ProductID") as agg_1, SUM("transactions_1k"."Price") as agg_2 FROM "customers" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID"  WHERE "transactions_1k"."CustomerID" BETWEEN 65498 AND 177233 AND "transactions_1k"."Price" BETWEEN 17.657599088083835 AND 147.64712833562754 AND "yearmonth"."Consumption" BETWEEN 524.7161455052304 AND 7340.58778705823 AND "customers"."Currency" != 'CZK' AND "transactions_1k"."Date" NOT LIKE '%2012-08-25%'