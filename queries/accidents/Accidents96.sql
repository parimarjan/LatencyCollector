SELECT COUNT(*) as agg_0, COUNT(*) as agg_1 FROM "oseba" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE ("upravna_enota"."ime_upravna_enota" != 'Šmarje pri Jelšah' OR "upravna_enota"."st_prebivalcev" >= 17742 OR "upravna_enota"."ime_upravna_enota" NOT LIKE '%ob%') AND "upravna_enota"."id_upravna_enota" <= 5508 AND "nesreca"."oznaka_odsek_ali_ulica" IN ('5.0', '00000', '3.0', '0.0', '1.0', '6.0', '2.0', '25162.0', '10.0') AND "nesreca"."vzrok_nesreca" != 'VO'