SELECT COUNT(*) as agg_0, MIN("L_AIRPORT_ID"."Code") as agg_1, AVG("L_AIRPORT_ID"."Code") as agg_2 FROM "L_AIRPORT_ID"  WHERE "L_AIRPORT_ID"."Code" BETWEEN 173471 AND 408438 AND "L_AIRPORT_ID"."Description" LIKE '%AK:%' AND "L_AIRPORT_ID"."Description" LIKE '%Fr%ance:%'