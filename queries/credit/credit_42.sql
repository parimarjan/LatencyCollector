
SELECT MAX("charge"."charge_amt") as agg_0 FROM "category" LEFT OUTER JOIN "charge" ON "category"."category_no" = "charge"."category_no" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no"  WHERE ("category"."category_no" != 3 OR ("category"."category_no" >= 2 AND "category"."category_no" BETWEEN 7 AND 9)) AND "region"."region_name" IN ('South American', 'Scandanavian', 'China', 'Western Europea', 'Mid East / Sout') AND "region"."street" != '%444 Fourth St.%';