SELECT MIN("On_Time_On_Time_Performance_2016_1"."Div1WheelsOff") as agg_0, MIN("On_Time_On_Time_Performance_2016_1"."NASDelay") as agg_1, MIN("On_Time_On_Time_Performance_2016_1"."Quarter" + "On_Time_On_Time_Performance_2016_1"."Div2TotalGTime") as agg_2 FROM "L_CITY_MARKET_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_CITY_MARKET_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."DestCityMarketID" LEFT OUTER JOIN "L_STATE_FIPS" ON "On_Time_On_Time_Performance_2016_1"."OriginStateFips" = "L_STATE_FIPS"."Code" LEFT OUTER JOIN "L_DISTANCE_GROUP_250" ON "On_Time_On_Time_Performance_2016_1"."DistanceGroup" = "L_DISTANCE_GROUP_250"."Code" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."OriginAirportSeqID" = "L_AIRPORT_SEQ_ID"."Code"  WHERE "On_Time_On_Time_Performance_2016_1"."OriginCityName" LIKE '%T%X%' AND "L_STATE_FIPS"."Description" NOT LIKE '%Of%'