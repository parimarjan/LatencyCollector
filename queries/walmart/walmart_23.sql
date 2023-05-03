
SELECT COUNT(*) as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "train"."date" != '%2013-11-30%' AND "train"."item_nbr" >= 24 AND "station"."station_nbr" IS NOT NULL;