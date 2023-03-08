SELECT AVG("dobito"."client_id" + "probehnuto"."client_id") as agg_0, MAX("client"."client_id") as agg_1 FROM "probehnuto" LEFT OUTER JOIN "client" ON "probehnuto"."client_id" = "client"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "probehnuto_mimo_penezenku"."client_id" <= 64811 AND "probehnuto_mimo_penezenku"."Month/Year" IN ('2013-04-01', '2012-12-01', '2012-09-01', '2012-10-01', '2012-11-01', '2013-05-01') AND "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" LIKE '%AN%O%' AND "probehnuto"."sluzba" = 'c'