SELECT MIN("products"."ProductID") as agg_0, MIN("products"."ProductID") as agg_1, MAX("products"."ProductID") as agg_2 FROM "products"  WHERE "products"."Description" IN ('Katalyzátor', 'Service charge', 'Ostatné sl.', 'Vratné obaly', 'Provozní poplatek', 'Servisní poplatek', 'Ostatni zbozi', 'Tisk reportu')