SELECT MAX("provider"."region_no" + "provider"."provider_no") as agg_0, AVG("provider"."provider_code" + "charge"."charge_code") as agg_1 FROM "region" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "charge" ON "provider"."provider_no" = "charge"."provider_no"  WHERE "region"."city" LIKE '%Sao%' AND "provider"."city" = ' '