SELECT COUNT(*) as agg_0 FROM "catery" LEFT OUTER JOIN "charge" ON "catery"."catery_no" = "charge"."catery_no" LEFT OUTER JOIN "provider" ON "charge"."provider_no" = "provider"."provider_no" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no"  WHERE "provider"."provider_name" != 'Prov. Giant Tra' AND "catery"."catery_desc" NOT LIKE '%Groc%eries%'