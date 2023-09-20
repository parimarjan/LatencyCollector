
SELECT COUNT(*) as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "train"."store_nbr" != 24 AND ("train"."units" <= 1669 OR ("train"."units" >= 0 AND "train"."units" BETWEEN 0 AND 1)) AND "station"."station_nbr" IS NOT NULL;