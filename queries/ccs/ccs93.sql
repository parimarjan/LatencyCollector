SELECT AVG("transactions_1k"."ProductID") as agg_0 FROM "customers" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID"  WHERE "yearmonth"."Date" BETWEEN 201206 AND 201304 AND ("yearmonth"."Consumption" >= 7549.436931322606 OR ("yearmonth"."CustomerID" BETWEEN 41943 AND 85932 AND "yearmonth"."Consumption" <= 11471.519734346413)) AND "transactions_1k"."Date" LIKE '%2012-08-%25%' AND "customers"."Currency" NOT LIKE '%CZK%'