SELECT COUNT(*) as agg_0, MAX("yearmonth"."CustomerID" + "transactions_1k"."GasStationID") as agg_1, MIN("yearmonth"."CustomerID") as agg_2 FROM "yearmonth" LEFT OUTER JOIN "customers" ON "yearmonth"."CustomerID" = "customers"."CustomerID" LEFT OUTER JOIN "transactions_1k" ON "customers"."CustomerID" = "transactions_1k"."CustomerID" LEFT OUTER JOIN "gasstations" ON "transactions_1k"."GasStationID" = "gasstations"."GasStationID"  WHERE "gasstations"."Segment" NOT LIKE '%Other%' AND "transactions_1k"."Amount" <= 0