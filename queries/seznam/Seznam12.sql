SELECT COUNT(*) as agg_0, AVG("client"."client_id") as agg_1 FROM "client"  WHERE "client"."kraj" IN ('Jihočeský kraj', 'Ústecký kraj', 'Jihomoravský kraj', 'Středočeský kraj', 'Praha', 'Královéhradecký kraj') AND "client"."obor" NOT LIKE '%Fl%oyd%' AND "client"."obor" != 'Sonja' AND "client"."client_id" >= 1135840