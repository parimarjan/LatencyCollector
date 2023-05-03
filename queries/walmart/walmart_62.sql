
SELECT SUM("station"."station_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."store_nbr" = 8 AND "station"."station_nbr" BETWEEN 8 AND 17 AND "train"."date" IN ('2012-12-26', '2012-07-27', '2013-02-26', '2012-10-05', '2012-08-29', '2012-06-04');