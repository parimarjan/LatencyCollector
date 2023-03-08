SELECT AVG("client"."client_id") as agg_0 FROM "probehnuto_mimo_penezenku" LEFT OUTER JOIN "client" ON "probehnuto_mimo_penezenku"."client_id" = "client"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id"  WHERE "client"."obor" = 'Floyd' AND ("probehnuto_mimo_penezenku"."client_id" BETWEEN 21325 AND 88584 OR ("probehnuto_mimo_penezenku"."client_id" BETWEEN 58818 AND 5446609 AND "probehnuto_mimo_penezenku"."client_id" BETWEEN 36783 AND 1084637)) AND "probehnuto"."month_year_datum_transakce" NOT LIKE '%2015%-07-01%'