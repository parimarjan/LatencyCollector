SELECT SUM("transactions_1k"."ProductID" + "transactions_1k"."Amount") as agg_0 FROM "transactions_1k" LEFT OUTER JOIN "customers" ON "transactions_1k"."CustomerID" = "customers"."CustomerID"  WHERE "transactions_1k"."Date" IN ('2012-08-25', '2012-08-23', '2012-08-26') AND "transactions_1k"."CardID" BETWEEN 559873 AND 565303 AND ("customers"."Currency" NOT LIKE '%CZK%' OR "customers"."CustomerID" >= 753622) AND "customers"."Segment" LIKE '%LAM%' AND "transactions_1k"."TransactionID" <= 718