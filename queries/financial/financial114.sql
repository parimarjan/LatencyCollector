SELECT MIN("district"."A6" + "district"."A7") as agg_0 FROM "district" LEFT OUTER JOIN "account" ON "district"."district_id" = "account"."district_id"  WHERE "account"."frequency" LIKE '%MESICNE%' AND "district"."A8" = 1 AND "district"."A2" != 'Strakonice' AND ("district"."A6" >= 31 OR "district"."A12" <= 4.510312469684684)