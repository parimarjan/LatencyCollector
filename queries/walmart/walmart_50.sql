
SELECT MAX("key"."station_nbr") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."station_nbr" >= 15 AND "station"."station_nbr" != 8 AND "train"."item_nbr" >= 84;