SELECT MAX("probehnuto_mimo_penezenku"."client_id" + "client"."client_id") as agg_0, MIN("client"."client_id") as agg_1 FROM "client" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" NOT LIKE '%ANO%'