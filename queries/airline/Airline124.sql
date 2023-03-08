SELECT COUNT(*) as agg_0, AVG("On_Time_On_Time_Performance_2016_1"."ArrDelay") as agg_1, MAX("On_Time_On_Time_Performance_2016_1"."Div2AirportSeqID" + "On_Time_On_Time_Performance_2016_1"."DayOfWeek") as agg_2 FROM "L_DISTANCE_GROUP_250" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_DISTANCE_GROUP_250"."Code" = "On_Time_On_Time_Performance_2016_1"."DistanceGroup" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."Div1AirportSeqID" = "L_AIRPORT_SEQ_ID"."Code" LEFT OUTER JOIN "L_STATE_FIPS" ON "On_Time_On_Time_Performance_2016_1"."OriginStateFips" = "L_STATE_FIPS"."Code"  WHERE ("On_Time_On_Time_Performance_2016_1"."DestCityName" NOT LIKE '%D%C%' OR ("On_Time_On_Time_Performance_2016_1"."Div2AirportID" <= 13298.85941231626 AND "On_Time_On_Time_Performance_2016_1"."DestCityName" LIKE '%I%L%')) AND "L_DISTANCE_GROUP_250"."Description" = 'Less Than 250 Miles'