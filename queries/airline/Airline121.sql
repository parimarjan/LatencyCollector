SELECT MIN("On_Time_On_Time_Performance_2016_1"."DestWac" + "On_Time_On_Time_Performance_2016_1"."ActualElapsedTime") as agg_0, COUNT(*) as agg_1 FROM "On_Time_On_Time_Performance_2016_1" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."OriginAirportSeqID" = "L_AIRPORT_SEQ_ID"."Code"  WHERE "L_AIRPORT_SEQ_ID"."Code" >= 1450998 AND "On_Time_On_Time_Performance_2016_1"."ArrDel15" >= 0.0 AND "On_Time_On_Time_Performance_2016_1"."OriginState" = 'NE' AND "On_Time_On_Time_Performance_2016_1"."ArrTimeBlk" LIKE '%1000-10%59%'