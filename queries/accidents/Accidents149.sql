SELECT MAX("nesreca"."x" + "nesreca"."stacionazna_ali_hisna_st") as agg_0, AVG("nesreca"."x_wgs84") as agg_1, SUM("nesreca"."x_wgs84" + "nesreca"."y_wgs84") as agg_2 FROM "nesreca"  WHERE "nesreca"."stanje_vozisce" IN ('MO', 'PP', 'OS', 'SL', 'PN', 'BL', 'SU', 'SN') AND "nesreca"."tekst_cesta_ali_naselje" NOT LIKE '%ŠE%NTILJ%' AND "nesreca"."x" <= 529862.561628938