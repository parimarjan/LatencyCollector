SELECT AVG("L_AIRPORT_SEQ_ID"."Code") as agg_0, MIN("L_AIRPORT_SEQ_ID"."Code") as agg_1, MIN("L_AIRPORT_SEQ_ID"."Code") as agg_2 FROM "L_AIRPORT_SEQ_ID"  WHERE ("L_AIRPORT_SEQ_ID"."Description" = 'Guantanamo, Cuba: Guantanamo Bay NAS' OR "L_AIRPORT_SEQ_ID"."Description" != 'Valence, France: Valence Chabeuil') AND "L_AIRPORT_SEQ_ID"."Code" >= 1141212 AND "L_AIRPORT_SEQ_ID"."Description" NOT LIKE '%A%irport%'