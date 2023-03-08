SELECT COUNT(*) as agg_0, COUNT(*) as agg_1, SUM("On_Time_On_Time_Performance_2016_1"."OriginCityMarketID") as agg_2 FROM "L_AIRPORT_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_AIRPORT_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."OriginAirportID" LEFT OUTER JOIN "L_CANCELLATION" ON "On_Time_On_Time_Performance_2016_1"."CancellationCode" = "L_CANCELLATION"."Code" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."Div1AirportSeqID" = "L_AIRPORT_SEQ_ID"."Code" LEFT OUTER JOIN "L_DISTANCE_GROUP_250" ON "On_Time_On_Time_Performance_2016_1"."DistanceGroup" = "L_DISTANCE_GROUP_250"."Code"  WHERE "L_DISTANCE_GROUP_250"."Code" = 30 OR ("L_DISTANCE_GROUP_250"."Code" = 27 AND "L_DISTANCE_GROUP_250"."Code" BETWEEN 23 AND 52)