SELECT MIN("probehnuto"."kc_proklikano" + "probehnuto_mimo_penezenku"."client_id") as agg_0, AVG("probehnuto_mimo_penezenku"."client_id" + "dobito"."client_id") as agg_1 FROM "dobito" LEFT OUTER JOIN "client" ON "dobito"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id"  WHERE "dobito"."client_id" <= 27542.713299902553 AND "probehnuto_mimo_penezenku"."probehla_inzerce_mimo_penezenku" NOT LIKE '%ANO%' AND "client"."obor" NOT LIKE '%Bozen%a%' AND "probehnuto"."sluzba" != 'd' AND "dobito"."month_year_datum_transakce" IN ('2015-06-01', '2015-10-01', '2015-03-01', '2015-05-01', '2015-09-01', '2014-10-01', '2015-04-01', '2014-12-01', '2014-11-01') AND ("probehnuto"."sluzba" IN ('a', 'f', 'c', 'd') OR ("probehnuto"."sluzba" IS NOT NULL AND "probehnuto"."sluzba" IN ('b', 'd')))