SELECT AVG("On_Time_On_Time_Performance_2016_1"."Cancelled") as agg_0, COUNT(*) as agg_1 FROM "L_ONTIME_DELAY_GROUPS" LEFT OUTER JOIN "On_Time_On_Time_Performance_2016_1" ON "L_ONTIME_DELAY_GROUPS"."Code" = "On_Time_On_Time_Performance_2016_1"."DepartureDelayGroups"  WHERE "L_ONTIME_DELAY_GROUPS"."Description" IN ('Delay between 30 to 44 minutes', 'Delay between 90 to 104 minutes', 'Delay between 105 to 119 minutes', 'Delay between -15 and -1 minutes', 'Delay between 60 to 74 minutes', 'Delay between 75 to 89 minutes') AND ("L_ONTIME_DELAY_GROUPS"."Description" != 'Delay between 15 to 29 minutes' OR "L_ONTIME_DELAY_GROUPS"."Description" = 'Delay between 150 to 164 minutes')