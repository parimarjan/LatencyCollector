SELECT COUNT(*) as agg_0, MIN("probehnuto"."client_id") as agg_1, MIN("dobito"."kc_dobito" + "probehnuto_mimo_penezenku"."client_id") as agg_2 FROM "dobito" LEFT OUTER JOIN "client" ON "dobito"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "probehnuto"."kc_proklikano" BETWEEN 335.1441896240174 AND 1028.1367577092778 OR "probehnuto"."kc_proklikano" >= 2825.9275441697614