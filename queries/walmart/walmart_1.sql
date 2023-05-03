
SELECT AVG("train"."item_nbr") as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "train"."store_nbr" BETWEEN 24 AND 40 AND "train"."units" <= 0 AND ("train"."date" != '%2013-10-08%' OR ("train"."item_nbr" >= 54 AND "train"."date" = '%2012-11-19%')) AND "key"."store_nbr" <= 26 AND "station"."station_nbr" IS NOT NULL;