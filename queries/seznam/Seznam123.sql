SELECT COUNT(*) as agg_0, AVG("probehnuto_mimo_penezenku"."client_id") as agg_1, MIN("probehnuto_mimo_penezenku"."client_id") as agg_2 FROM "probehnuto_mimo_penezenku"  WHERE "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" != 'ANO' AND "probehnuto_mimo_penezenku"."client_id" BETWEEN 8923177 AND 9212306 AND "probehnuto_mimo_penezenku"."Month/Year" LIKE '%2012-10-01%' AND "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" LIKE '%ANO%' AND "probehnuto_mimo_penezenku"."Month/Year" != '2015-07-01'