SELECT AVG("district"."A15") as agg_0, MIN("district"."A8" + "district"."A14") as agg_1, MIN("client"."client_id" + "district"."A12") as agg_2 FROM "client" LEFT OUTER JOIN "district" ON "client"."district_id" = "district"."district_id"  WHERE "district"."A2" = 'Prachatice'