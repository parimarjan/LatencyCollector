SELECT MAX("probehnuto"."client_id") as agg_0, COUNT(*) as agg_1 FROM "probehnuto"  WHERE "probehnuto"."sluzba" != 'a' AND "probehnuto"."month_year_datum_transakce" LIKE '%20%15-04-01%' AND "probehnuto"."month_year_datum_transakce" NOT LIKE '%2015-06-01%' AND ("probehnuto"."kc_proklikano" >= -30133.3369584615 OR "probehnuto"."kc_proklikano" <= 15598096.81589383) AND "probehnuto"."sluzba" != 'c'