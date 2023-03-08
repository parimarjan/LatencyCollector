SELECT AVG("probehnuto"."kc_proklikano" + "probehnuto"."client_id") as agg_0, COUNT(*) as agg_1 FROM "probehnuto" LEFT OUTER JOIN "client" ON "probehnuto"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id"  WHERE "client"."obor" LIKE '%Ra%dek%' AND "probehnuto"."month_year_datum_transakce" IN ('2015-05-01', '2014-10-01', '2015-04-01', '2014-11-01', '2014-08-01', '2014-09-01', '2014-04-01', '2014-05-01', '2014-07-01') AND "dobito"."month_year_datum_transakce" IN ('2014-12-01', '2015-10-01', '2015-09-01', '2014-03-01', '2014-10-01')