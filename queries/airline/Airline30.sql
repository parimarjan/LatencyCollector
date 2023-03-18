SELECT MAX("L_AIRLINE_ID"."Code") as agg_0, COUNT(*) as agg_1, MIN("L_AIRLINE_ID"."Code") as agg_2 FROM "L_AIRLINE_ID"  WHERE "L_AIRLINE_ID"."Description" NOT LIKE '%Pacific%' AND "L_AIRLINE_ID"."Description" IN ('Transaero Airlines: UN', 'Northern Air Car Inc.: NC') AND "L_AIRLINE_ID"."Code" <= 29306