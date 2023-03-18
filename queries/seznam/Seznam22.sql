SELECT COUNT(*) as agg_0 FROM "probehnuto" LEFT OUTER JOIN "client" ON "probehnuto"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id"  WHERE ("dobito"."kc_dobito" <= 5473.711800168755 OR ("dobito"."kc_dobito" <= 15065.884612034768 AND "dobito"."kc_dobito" <= 3151.7190659650287)) AND "probehnuto"."client_id" <= 107917.73853373805 AND "probehnuto_mimo_penezenku"."Month/Year" NOT LIKE '%2013-08-01%' AND "probehnuto_mimo_penezenku"."Month/Year" IN ('2013-04-01', '2012-10-01', '2012-09-01')