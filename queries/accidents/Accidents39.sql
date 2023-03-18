SELECT SUM("oseba"."vozniski_staz_LL" + "nesreca"."y") as agg_0 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "upravna_enota"."ime_upravna_enota" NOT LIKE '%Ljubljan%a%' AND "upravna_enota"."ime_upravna_enota" IN ('Ormož', 'Novo Mesto', 'Radovljica', 'Postojna') AND "upravna_enota"."id_upravna_enota" BETWEEN 5530 AND 5557