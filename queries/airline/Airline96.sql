SELECT SUM("On_Time_On_Time_Performance_2016_1"."CRSElapsedTime" + "L_AIRPORT_ID"."Code") as agg_0 FROM "On_Time_On_Time_Performance_2016_1" LEFT OUTER JOIN "L_AIRPORT_ID" ON "On_Time_On_Time_Performance_2016_1"."OriginAirportID" = "L_AIRPORT_ID"."Code"  WHERE "L_AIRPORT_ID"."Code" BETWEEN 322801 AND 408492 AND "On_Time_On_Time_Performance_2016_1"."UniqueCarrier" NOT LIKE '%AS%' AND "On_Time_On_Time_Performance_2016_1"."DestAirportID" BETWEEN 11236 AND 282101