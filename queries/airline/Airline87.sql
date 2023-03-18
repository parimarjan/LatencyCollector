SELECT SUM("On_Time_On_Time_Performance_2016_1"."DistanceGroup") as agg_0, AVG("On_Time_On_Time_Performance_2016_1"."DivDistance") as agg_1 FROM "L_AIRPORT_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_AIRPORT_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."Div1AirportID"  WHERE "L_AIRPORT_ID"."Description" = 'Mary's Harbour, Canada: Mary's Harbour Airport' AND "On_Time_On_Time_Performance_2016_1"."DivAirportLandings" = 0 AND "L_AIRPORT_ID"."Description" IN ('Biloela, Australia: Biloela (Thanol)', 'Ugashik, AK: Ugashik Airport', 'Tarbes/Lourdes/Pyrenees, France: Tarbes-Lourdes-Pyrenees', 'Mulhouse, France: EuroAirport', 'Three Forks, MT: Three Forks Airport') AND "On_Time_On_Time_Performance_2016_1"."ArrDelayMinutes" BETWEEN 0.0 AND 9.557946422158702 AND "On_Time_On_Time_Performance_2016_1"."OriginStateName" != 'Virginia'