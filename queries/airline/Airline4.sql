SELECT MAX("On_Time_On_Time_Performance_2016_1"."WheelsOn") as agg_0 FROM "L_AIRLINE_ID" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_AIRLINE_ID"."Code" = "On_Time_On_Time_Performance_2016_1"."AirlineID" LEFT OUTER JOIN "L_CANCELLATION" ON "On_Time_On_Time_Performance_2016_1"."CancellationCode" = "L_CANCELLATION"."Code"  WHERE "L_AIRLINE_ID"."Description" LIKE '%Limited:%' AND "On_Time_On_Time_Performance_2016_1"."Dest" NOT LIKE '%TPA%'