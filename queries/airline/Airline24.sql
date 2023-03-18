SELECT SUM("On_Time_On_Time_Performance_2016_1"."DepDelay" + "On_Time_On_Time_Performance_2016_1"."Flights") as agg_0, MIN("On_Time_On_Time_Performance_2016_1"."DivActualElapsedTime" + "On_Time_On_Time_Performance_2016_1"."NASDelay") as agg_1, SUM("On_Time_On_Time_Performance_2016_1"."DivReachedDest" + "On_Time_On_Time_Performance_2016_1"."SecurityDelay") as agg_2 FROM "L_STATE_FIPS" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_STATE_FIPS"."Code" = "On_Time_On_Time_Performance_2016_1"."OriginStateFips" LEFT OUTER JOIN "L_AIRPORT_SEQ_ID" ON "On_Time_On_Time_Performance_2016_1"."Div2AirportSeqID" = "L_AIRPORT_SEQ_ID"."Code"  WHERE "L_AIRPORT_SEQ_ID"."Description" != 'Puerto Vallarta, Mexico: Licenciado Gustavo Diaz Ordaz International' OR ("L_AIRPORT_SEQ_ID"."Code" BETWEEN 1404703 AND 1538014 AND "L_AIRPORT_SEQ_ID"."Description" != 'Tallinn, Estonia: Lennart Meri Tallinn')