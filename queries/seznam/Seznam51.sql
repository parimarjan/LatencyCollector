SELECT SUM("probehnuto_mimo_penezenku"."client_id") as agg_0, AVG("probehnuto_mimo_penezenku"."client_id") as agg_1 FROM "probehnuto_mimo_penezenku"  WHERE "probehnuto_mimo_penezenku"."Month/Year" LIKE '%2013-04-01%' AND "probehnuto_mimo_penezenku"."Month/Year" IN ('2012-11-01', '2012-10-01', '2013-05-01', '2013-01-01') AND "probehnuto_mimo_penezenku"."client_id" >= 30410