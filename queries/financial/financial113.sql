SELECT AVG("district"."A14" + "loan"."account_id") as agg_0, MIN("district"."A10" + "district"."A5") as agg_1, COUNT(*) as agg_2 FROM "loan" LEFT OUTER JOIN "account" ON "loan"."account_id" = "account"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id" LEFT OUTER JOIN "disp" ON "account"."account_id" = "disp"."account_id"  WHERE "trans"."k_symbol" LIKE '%SIPO%' AND "district"."A2" IN ('Brno - venkov', 'Blansko', 'Semily') AND "account"."frequency" IN ('POPLATEK TYDNE') AND "account"."date" IN ('1996-06-25', '1993-10-08', '1993-06-08')