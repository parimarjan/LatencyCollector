SELECT COUNT(*) as agg_0 FROM "region" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no"  WHERE "provider"."city" = ' ' AND ("provider"."expr_dt" LIKE '%10:41%:19%' OR ("provider"."expr_dt" != '2000-10-12 10:41:20' AND "provider"."expr_dt" NOT LIKE '%10:41:18%')) AND "region"."region_name" = 'Western Europea' AND ("region"."country" NOT LIKE '%C%a%' OR "region"."country" NOT LIKE '%Ke%' OR "region"."country" NOT LIKE '%J%a%') AND "provider"."provider_no" BETWEEN 116 AND 1304