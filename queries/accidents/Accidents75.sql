SELECT COUNT(*) as agg_0 FROM "nesreca"  WHERE "nesreca"."oznaka_odsek_ali_ulica" IN ('25162.0', '1.0', '6.0', '10.0', '0.0', '3.0') AND ("nesreca"."opis_prizorisce" IN ('M') OR "nesreca"."oznaka_cesta_ali_naselje" != '06052')