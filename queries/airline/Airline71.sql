SELECT MIN("On_Time_On_Time_Performance_2016_1"."OriginAirportID" + "On_Time_On_Time_Performance_2016_1"."DepartureDelayGroups") as agg_0 FROM "On_Time_On_Time_Performance_2016_1"  WHERE "On_Time_On_Time_Performance_2016_1"."UniqueCarrier" NOT LIKE '%A%S%' AND "On_Time_On_Time_Performance_2016_1"."ArrTimeBlk" NOT LIKE '%1900-1959%'