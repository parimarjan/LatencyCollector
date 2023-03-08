SELECT MIN("customers"."CustomerID" + "yearmonth"."Consumption") as agg_0, SUM("yearmonth"."Consumption" + "yearmonth"."CustomerID") as agg_1 FROM "customers" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID"  WHERE "transactions_1k"."CardID" BETWEEN 407580 AND 621997 AND "customers"."Currency" LIKE '%E%UR%' AND "yearmonth"."CustomerID" BETWEEN 250069 AND 993163