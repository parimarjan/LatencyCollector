SELECT COUNT(*) as agg_0 FROM "L_AIRLINE_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_AIRLINE_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."AirlineID" LEFT OUTER JOIN "L_AIRPORT_ID" ON "On_Time_On_Time_Performance_2016_1"."DestAirportID" = "L_AIRPORT_ID"."Code"  WHERE "L_AIRPORT_ID"."Description" IN ('Port Frederick, AK: Port Frederick Airport', 'Mulhouse, France: EuroAirport', 'Alpine, AK: Alpine Airstrip', 'Three Forks, MT: Three Forks Airport') AND "L_AIRLINE_ID"."Code" BETWEEN 21364 AND 21948 AND "L_AIRPORT_ID"."Description" LIKE '%C%ounty%' AND "On_Time_On_Time_Performance_2016_1"."Carrier" NOT LIKE '%A%A%' AND "L_AIRLINE_ID"."Description" = 'British Airways Plc: BA' AND "L_AIRPORT_ID"."Code" <= 282932