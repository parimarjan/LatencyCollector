SELECT COUNT(*) as agg_0, MAX("district"."A4" + "district"."A5") as agg_1, SUM("district"."A4" + "account"."district_id") as agg_2 FROM "client" LEFT OUTER JOIN "district" ON "client"."district_id" = "district"."district_id" LEFT OUTER JOIN "disp" ON "client"."client_id" = "disp"."client_id" LEFT OUTER JOIN "account" ON "disp"."account_id" = "account"."account_id" LEFT OUTER JOIN "card" ON "disp"."disp_id" = "card"."disp_id"  WHERE "card"."issued" IN ('1997-05-17', '1998-07-07') AND "account"."frequency" IN ('POPLATEK TYDNE') AND "district"."A2" IN ('Trutnov', 'Hodonin') AND "client"."gender" IN ('F')