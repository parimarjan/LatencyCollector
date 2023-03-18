SELECT COUNT(*) as agg_0 FROM "L_CITY_MARKET_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_CITY_MARKET_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."OriginCityMarketID" LEFT OUTER JOIN "L_AIRPORT_ID" ON "On_Time_On_Time_Performance_2016_1"."Div1AirportID" = "L_AIRPORT_ID"."Code"  WHERE "On_Time_On_Time_Performance_2016_1"."OriginState" = 'IA' AND "L_CITY_MARKET_ID"."Code" >= 59278 AND "On_Time_On_Time_Performance_2016_1"."DepTimeBlk" IN ('1000-1059', '1700-1759', '0700-0759', '1500-1559') AND ("On_Time_On_Time_Performance_2016_1"."DestState" LIKE '%HI%' OR "On_Time_On_Time_Performance_2016_1"."Carrier" IN ('NK', 'UA', 'B6', 'F9', 'WN', 'AA', 'DL', 'AS', 'OO')) AND "L_AIRPORT_ID"."Description" NOT LIKE '%Island%,%'