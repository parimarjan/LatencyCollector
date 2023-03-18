SELECT COUNT(*) as agg_0, MIN("On_Time_On_Time_Performance_2016_1"."ActualElapsedTime" + "On_Time_On_Time_Performance_2016_1"."DestCityMarketID") as agg_1 FROM "L_ONTIME_DELAY_GROUPS" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_ONTIME_DELAY_GROUPS"."Code" = "On_Time_On_Time_Performance_2016_1"."DepartureDelayGroups" LEFT OUTER JOIN "L_STATE_FIPS" ON "On_Time_On_Time_Performance_2016_1"."DestStateFips" = "L_STATE_FIPS"."Code" LEFT OUTER JOIN "L_DISTANCE_GROUP_250" ON "On_Time_On_Time_Performance_2016_1"."DistanceGroup" = "L_DISTANCE_GROUP_250"."Code"  WHERE "L_STATE_FIPS"."Description" != 'Illinois' AND "L_ONTIME_DELAY_GROUPS"."Description" NOT LIKE '%5%9%'