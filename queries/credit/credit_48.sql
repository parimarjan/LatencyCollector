
SELECT MIN("region"."phone_no") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no";