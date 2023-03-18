SELECT MIN("yearmonth"."Date") as agg_0, MAX("transactions_1k"."CardID" + "transactions_1k"."GasStationID") as agg_1 FROM "yearmonth" LEFT OUTER JOIN "customers" ON "yearmonth"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID"  WHERE "transactions_1k"."Price" BETWEEN 45.2489254649215 AND 610.2717263778457 AND "yearmonth"."Consumption" >= 3216.7309315289226