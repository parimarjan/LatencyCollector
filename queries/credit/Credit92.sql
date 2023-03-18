SELECT SUM("region"."mail_code" + "provider"."provider_no") as agg_0 FROM "region" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no"  WHERE "provider"."mail_code" BETWEEN nan AND nan AND "region"."phone_no" IS NOT NULL AND "provider"."provider_code" IS NOT NULL AND "region"."country" LIKE '%K%e%'