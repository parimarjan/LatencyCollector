SELECT SUM("On_Time_On_Time_Performance_2016_1"."OriginWac") as agg_0, AVG("On_Time_On_Time_Performance_2016_1"."OriginAirportSeqID") as agg_1, SUM("On_Time_On_Time_Performance_2016_1"."DepDelayMinutes" + "On_Time_On_Time_Performance_2016_1"."Div2LongestGTime") as agg_2 FROM "L_DISTANCE_GROUP_250" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_DISTANCE_GROUP_250"."Code" = "On_Time_On_Time_Performance_2016_1"."DistanceGroup"  WHERE "On_Time_On_Time_Performance_2016_1"."DestStateName" LIKE '%N%orth%' AND "L_DISTANCE_GROUP_250"."Description" LIKE '%25%0%'