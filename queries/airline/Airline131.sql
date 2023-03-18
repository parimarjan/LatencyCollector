SELECT SUM("On_Time_On_Time_Performance_2016_1"."TaxiIn" + "On_Time_On_Time_Performance_2016_1"."DayofMonth") as agg_0, MIN("On_Time_On_Time_Performance_2016_1"."ArrDelay" + "On_Time_On_Time_Performance_2016_1"."Div2AirportID") as agg_1, COUNT(*) as agg_2 FROM "L_STATE_FIPS" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_STATE_FIPS"."Code" = "On_Time_On_Time_Performance_2016_1"."DestStateFips" LEFT OUTER JOIN "L_CANCELLATION" ON "On_Time_On_Time_Performance_2016_1"."CancellationCode" = "L_CANCELLATION"."Code" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."DestAirportSeqID" = "L_AIRPORT_SEQ_ID"."Code" LEFT OUTER JOIN "L_AIRPORT_ID" ON "On_Time_On_Time_Performance_2016_1"."Div2AirportID" = "L_AIRPORT_ID"."Code"  WHERE "L_STATE_FIPS"."Code" <= 433 AND "L_CANCELLATION"."Description" LIKE '%Weather%' AND "L_AIRPORT_ID"."Code" BETWEEN 208193 AND 280124