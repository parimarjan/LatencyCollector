
SELECT MIN("train"."units") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "station"."station_nbr" >= 4 AND "train"."store_nbr" <= 20 AND ("train"."units" BETWEEN 0 AND 4188 OR ("train"."units" >= 0 AND "train"."units" >= 0)) AND "train"."date" != '%2012-10-17%';