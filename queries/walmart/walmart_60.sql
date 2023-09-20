
SELECT AVG("key"."station_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE ("train"."date" IN ('2012-07-16', '2013-02-21', '2012-10-05', '2012-09-06', '2012-06-04', '2013-02-26', '2012-12-26') OR "train"."item_nbr" <= 7) AND "station"."station_nbr" <= 11 AND "key"."station_nbr" BETWEEN 12 AND 16;