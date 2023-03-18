SELECT COUNT(*) as agg_0, COUNT(*) as agg_1, AVG("dobito"."kc_dobito" + "dobito"."client_id") as agg_2 FROM "probehnuto_mimo_penezenku" LEFT OUTER JOIN "client" ON "probehnuto_mimo_penezenku"."client_id" = "client"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id"  WHERE "client"."kraj" != 'Středočeský kraj' AND "probehnuto_mimo_penezenku"."Month/Year" IN ('2013-06-01', '2012-11-01', '2012-09-01', '2013-04-01') AND "dobito"."sluzba" IN ('a', 'h', 'd', 'e', 'c')