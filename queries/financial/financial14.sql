SELECT SUM("district"."A12") as agg_0, COUNT(*) as agg_1, AVG("district"."A9" + "district"."A13") as agg_2 FROM "district" LEFT OUTER JOIN "client" ON "district"."district_id" = "client"."district_id"  WHERE "district"."A2" = 'Nachod' AND "district"."A12" <= 6.150465498310663 AND "client"."client_id" <= 91337 AND "client"."district_id" BETWEEN 52 AND 647