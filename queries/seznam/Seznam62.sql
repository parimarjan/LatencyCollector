SELECT COUNT(*) as agg_0, AVG("probehnuto"."kc_proklikano" + "probehnuto_mimo_penezenku"."client_id") as agg_1, MIN("dobito"."client_id" + "probehnuto"."kc_proklikano") as agg_2 FROM "probehnuto_mimo_penezenku" LEFT OUTER JOIN "client" ON "probehnuto_mimo_penezenku"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id"  WHERE "client"."kraj" NOT LIKE '%Ústecký%'