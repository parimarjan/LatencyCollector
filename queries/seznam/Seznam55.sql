SELECT SUM("probehnuto_mimo_penezenku"."client_id") as agg_0, COUNT(*) as agg_1 FROM "probehnuto_mimo_penezenku"  WHERE "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" LIKE '%AN%O%' AND "probehnuto_mimo_penezenku"."Month/Year" NOT LIKE '%2013-08-0%1%' AND "probehnuto_mimo_penezenku"."Month/Year" = '2013-07-01'