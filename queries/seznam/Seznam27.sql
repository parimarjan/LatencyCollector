SELECT SUM("probehnuto_mimo_penezenku"."client_id") as agg_0, AVG("probehnuto_mimo_penezenku"."client_id") as agg_1 FROM "probehnuto_mimo_penezenku"  WHERE "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" = 'ANO' AND "probehnuto_mimo_penezenku"."Month/Year" LIKE '%2014-0%2-01%'