SELECT MIN("On_Time_On_Time_Performance_2016_1"."DepDel15" + "On_Time_On_Time_Performance_2016_1"."DestAirportSeqID") as agg_0, AVG("On_Time_On_Time_Performance_2016_1"."DivAirportLandings") as agg_1, MAX("On_Time_On_Time_Performance_2016_1"."Div2AirportSeqID") as agg_2 FROM "L_CANCELLATION" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_CANCELLATION"."Code" = "On_Time_On_Time_Performance_2016_1"."CancellationCode"  WHERE "On_Time_On_Time_Performance_2016_1"."DepartureDelayGroups" <= -1.0 AND "L_CANCELLATION"."Description" LIKE '%Sec%urity%' AND "L_CANCELLATION"."Description" LIKE '%Weather%'