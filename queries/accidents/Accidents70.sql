SELECT SUM("nesreca"."stacionazna_ali_hisna_st" + "nesreca"."x") as agg_0 FROM "nesreca"  WHERE "nesreca"."oznaka_cesta_ali_naselje" IN ('17042') AND "nesreca"."upravna_enota" BETWEEN 5524 AND 5552 AND ("nesreca"."x_wgs84" >= 15.811504791101338 OR "nesreca"."x" >= 519207.3795403736) AND ("nesreca"."y_wgs84" >= 46.47296768820004 OR ("nesreca"."stanje_promet" != 'Z' AND "nesreca"."y_wgs84" BETWEEN 46.43570665795024 AND 46.519416935323434))