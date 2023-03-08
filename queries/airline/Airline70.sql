SELECT MIN("L_ONTIME_DELAY_GROUPS"."Code") as agg_0, SUM("L_ONTIME_DELAY_GROUPS"."Code") as agg_1, COUNT(*) as agg_2 FROM "L_ONTIME_DELAY_GROUPS"  WHERE "L_ONTIME_DELAY_GROUPS"."Description" = 'Delay between 15 to 29 minutes' AND "L_ONTIME_DELAY_GROUPS"."Description" != 'Delay between 60 to 74 minutes'