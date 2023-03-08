SELECT AVG("transactions_1k"."TransactionID") as agg_0, MAX("yearmonth"."Consumption" + "yearmonth"."Date") as agg_1, AVG("yearmonth"."Consumption" + "transactions_1k"."CustomerID") as agg_2 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "yearmonth"."CustomerID" <= 1179905