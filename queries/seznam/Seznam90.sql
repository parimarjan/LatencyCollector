SELECT MAX("client"."client_id" + "dobito"."client_id") as agg_0, COUNT(*) as agg_1, MIN("dobito"."kc_dobito") as agg_2 FROM "client" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id"