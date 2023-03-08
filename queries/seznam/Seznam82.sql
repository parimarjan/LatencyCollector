SELECT SUM("probehnuto"."client_id") as agg_0 FROM "client" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "probehnuto_mimo_penezenku"."Month/Year" LIKE '%2013-04-01%' AND "probehnuto_mimo_penezenku"."Month/Year" IN ('2013-05-01', '2013-01-01', '2012-10-01', '2013-02-01', '2012-12-01', '2013-03-01', '2013-06-01') AND "dobito"."month_year_datum_transakce" NOT LIKE '%2015-0%7-01%'