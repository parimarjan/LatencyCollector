SELECT AVG("probehnuto_mimo_penezenku"."client_id" + "dobito"."client_id") as agg_0, SUM("dobito"."kc_dobito") as agg_1 FROM "dobito" LEFT OUTER JOIN "client" ON "dobito"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "probehnuto_mimo_penezenku"."client_id" >= 8453661 AND "client"."obor" IN ('Pink', 'Vladan', 'Erika') AND ("client"."obor" NOT LIKE '%G%abriel%' OR "client"."kraj" NOT LIKE '%Liberecký%') AND "dobito"."kc_dobito" BETWEEN 17523.802623829895 AND 20742.818186341647