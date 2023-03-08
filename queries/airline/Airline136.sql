SELECT COUNT(*) as agg_0 FROM "L_CITY_MARKET_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_CITY_MARKET_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."OriginCityMarketID"  WHERE "On_Time_On_Time_Performance_2016_1"."DestStateFips" BETWEEN 11 AND 416 AND ("On_Time_On_Time_Performance_2016_1"."FlightDate" != '2016-01-27' OR "On_Time_On_Time_Performance_2016_1"."FlightDate" IN ('2016-01-14', '2016-01-03', '2016-01-04') OR "On_Time_On_Time_Performance_2016_1"."FlightDate" LIKE '%2016-%01-02%')