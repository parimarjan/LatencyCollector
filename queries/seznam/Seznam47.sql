SELECT AVG("client"."client_id") as agg_0, AVG("dobito"."client_id" + "client"."client_id") as agg_1, MIN("dobito"."client_id") as agg_2 FROM "dobito" LEFT OUTER JOIN "client" ON "dobito"."client_id" = "client"."client_id"  WHERE "client"."obor" IN ('Anezka', 'Ozzy', 'Richard', 'Hermina', 'Erika') AND "client"."obor" != 'Dusan' AND "dobito"."month_year_datum_transakce" LIKE '%2015-06-01%' AND "client"."client_id" <= 393496