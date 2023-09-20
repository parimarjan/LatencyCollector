
SELECT MIN("charge"."charge_no") as agg_0 FROM "charge" LEFT OUTER JOIN "category" ON "charge"."category_no" = "category"."category_no"  WHERE "charge"."charge_amt" BETWEEN 891.8840135940645 AND 3368.186747076116 AND "charge"."statement_no" <= 28322 AND "category"."category_desc" IN ('Clothing', 'Entertainment');