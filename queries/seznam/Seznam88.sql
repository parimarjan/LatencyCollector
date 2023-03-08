SELECT MAX("probehnuto"."kc_proklikano" + "probehnuto_mimo_penezenku"."client_id") as agg_0, MAX("dobito"."kc_dobito") as agg_1, SUM("probehnuto_mimo_penezenku"."client_id" + "dobito"."client_id") as agg_2 FROM "dobito" LEFT OUTER JOIN "client" ON "dobito"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id"  WHERE ("client"."obor" LIKE '%V%ladan%' OR ("client"."client_id" <= 656956 AND "client"."obor" IN ('Floyd', 'Vladan', 'Zora', 'Hermina', 'Gabriel', 'Erika', 'Ozzy', 'Richard'))) AND "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" LIKE '%AN%O%' AND "client"."obor" IN ('Erika', 'Gabriel', 'Richard', 'Ozzy', 'Zora')