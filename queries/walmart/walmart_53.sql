
SELECT COUNT(*) as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "train"."store_nbr" BETWEEN 20 AND 41 AND "key"."store_nbr" = 13 AND "train"."units" BETWEEN 0 AND 3778 AND ("train"."date" != '%2013-02-05%' OR "train"."date" IN ('2012-07-16', '2012-12-26', '2012-09-06', '2012-08-29', '2012-07-27', '2013-02-15', '2012-10-05', '2013-02-26', '2013-02-21') OR "train"."date" IN ('2012-09-06', '2012-12-26', '2013-02-21', '2012-10-05', '2012-08-29', '2013-02-26', '2012-07-27', '2012-07-16', '2012-06-04'));