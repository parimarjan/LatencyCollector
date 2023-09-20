
SELECT MAX("member"."country") as agg_0 FROM "charge" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no"  WHERE "member"."expr_dt" != '%2000-10-12 10:43:18%' AND ("region"."mail_code" BETWEEN nan AND nan OR "region"."country" IN ('Ke', 'Sw', 'Br', 'Ca'));