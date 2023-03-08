SELECT COUNT(*) as agg_0, MIN("transactions_1k"."TransactionID") as agg_1, MIN("yearmonth"."Date" + "yearmonth"."Consumption") as agg_2 FROM "yearmonth" LEFT OUTER JOIN "customers" ON "yearmonth"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID"  WHERE "transactions_1k"."Date" LIKE '%2012-08-24%'