SELECT MAX("dobito"."kc_dobito") as agg_0, AVG("dobito"."client_id" + "probehnuto"."kc_proklikano") as agg_1 FROM "probehnuto_mimo_penezenku" LEFT OUTER JOIN "client" ON "probehnuto_mimo_penezenku"."client_id" = "client"."client_id" LEFT OUTER JOIN "dobito" ON "client"."client_id" = "dobito"."client_id" LEFT OUTER JOIN "probehnuto" ON "client"."client_id" = "probehnuto"."client_id"  WHERE "probehnuto"."kc_proklikano" <= 318.0681315739753 AND "dobito"."sluzba" != 'h' AND "dobito"."client_id" BETWEEN 19092.090102601476 AND 999917.239987867 AND "probehnuto"."month_year_datum_transakce" IN ('2014-04-01')