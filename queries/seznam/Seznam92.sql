SELECT SUM("client"."client_id" + "probehnuto"."client_id") as agg_0, MAX("probehnuto"."kc_proklikano" + "client"."client_id") as agg_1 FROM "probehnuto" LEFT OUTER JOIN "client" ON "probehnuto"."client_id" = "client"."client_id"  WHERE "probehnuto"."month_year_datum_transakce" IN ('2014-05-01', '2015-05-01', '2014-10-01', '2014-09-01', '2014-08-01', '2015-04-01', '2014-11-01') AND "probehnuto"."kc_proklikano" BETWEEN -126477.25352176625 AND 1156.1507151121684 AND "probehnuto"."month_year_datum_transakce" NOT LIKE '%2015-06-01%'