
SELECT MAX("train"."item_nbr") as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "key"."store_nbr" >= 25 AND "key"."station_nbr" != 12;