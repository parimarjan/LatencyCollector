SELECT AVG("probehnuto"."kc_proklikano") as agg_0 FROM "client" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id" LEFT OUTER JOIN "probehnuto_mimo_penezenku" ON "client"."client_id" = "probehnuto_mimo_penezenku"."client_id"  WHERE "client"."obor" LIKE '%Sonja%' AND "client"."kraj" IN ('Moravskoslezský kraj', 'Královéhradecký kraj', 'Zlínský kraj', 'Středočeský kraj', 'Olomoucký kraj') AND "probehnuto_mimo_penezenku"."Month/Year" NOT LIKE '%2012-10-01%' AND "client"."client_id" >= 5293462 AND "probehnuto"."sluzba" = 'b' AND "probehnuto"."month_year_datum_transakce" LIKE '%2015%-03-01%'