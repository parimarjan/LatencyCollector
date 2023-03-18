SELECT AVG("On_Time_On_Time_Performance_2016_1"."ActualElapsedTime" + "On_Time_On_Time_Performance_2016_1"."DepTime") as agg_0 FROM "L_STATE_FIPS" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_STATE_FIPS"."Code" = "On_Time_On_Time_Performance_2016_1"."DestStateFips" LEFT OUTER JOIN "L_DISTANCE_GROUP_250" ON "On_Time_On_Time_Performance_2016_1"."DistanceGroup" = "L_DISTANCE_GROUP_250"."Code" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."DestAirportSeqID" = "L_AIRPORT_SEQ_ID"."Code" LEFT OUTER JOIN "L_CITY_MARKET_ID" ON "On_Time_On_Time_Performance_2016_1"."OriginCityMarketID" = "L_CITY_MARKET_ID"."Code"  WHERE "L_STATE_FIPS"."Description" IN ('Not Applicable') AND "On_Time_On_Time_Performance_2016_1"."DivActualElapsedTime" <= 354.49800277744254 AND "L_AIRPORT_SEQ_ID"."Description" LIKE '%Ba%y%' AND "On_Time_On_Time_Performance_2016_1"."DestStateName" LIKE '%Texas%' AND "On_Time_On_Time_Performance_2016_1"."UniqueCarrier" IN ('EV', 'B6', 'AS', 'WN', 'DL', 'UA', 'NK', 'OO')