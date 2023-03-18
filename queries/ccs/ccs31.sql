SELECT MAX("products"."ProductID" + "transactions_1k"."Price") as agg_0 FROM "products" LEFT OUTER JOIN "transactions_1k" ON "products"."ProductID" = "transactions_1k"."ProductID"  WHERE "transactions_1k"."Date" != '2012-08-24' AND ("products"."Description" IN ('Tisk reportu', 'Provozní poplatek', 'Ostatné sl.', 'Katalyzátor', 'Ostatni zbozi', 'Servisní poplatek', 'Potraviny') OR "products"."ProductID" <= 576 OR "products"."Description" LIKE '%Mýtné%') AND "transactions_1k"."TransactionID" BETWEEN 1 AND 238 AND ("transactions_1k"."Price" >= 12.954750960577062 OR "transactions_1k"."Price" <= 655.9299473778234 OR "transactions_1k"."Price" BETWEEN 71.42398275406573 AND 123.24468405977817) AND "transactions_1k"."Time" != '07:01:00' AND "transactions_1k"."GasStationID" <= 5398