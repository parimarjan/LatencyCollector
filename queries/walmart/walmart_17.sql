
SELECT COUNT(*) as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."station_nbr" = 12 AND "train"."item_nbr" <= 31 AND "station"."station_nbr" != 10 AND "train"."units" >= 0;