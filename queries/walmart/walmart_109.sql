
SELECT AVG("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."store_nbr" != 27 AND "station"."station_nbr" BETWEEN 3 AND 13 AND ("train"."item_nbr" >= 12 OR ("train"."units" BETWEEN 0 AND 3247 AND "train"."item_nbr" BETWEEN 81 AND 82)) AND "key"."station_nbr" BETWEEN 9 AND 15;