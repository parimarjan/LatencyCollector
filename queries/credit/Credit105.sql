SELECT MIN("provider"."state_prov" + "charge"."catery_no") as agg_0, SUM("charge"."charge_no") as agg_1 FROM "provider" LEFT OUTER JOIN "charge" ON "provider"."provider_no" = "charge"."provider_no"