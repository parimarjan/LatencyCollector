SELECT AVG("charge"."charge_code") as agg_0 FROM "catery" LEFT OUTER JOIN "charge" ON "catery"."catery_no" = "charge"."catery_no"  WHERE "charge"."member_no" <= 49644 AND "catery"."catery_no" = 24 AND ("charge"."catery_no" <= 40 OR "charge"."catery_no" = 24 OR "charge"."catery_no" <= 46) AND "charge"."charge_amt" >= 2120.878241712815 AND "catery"."catery_desc" LIKE '%Entertainment%' AND "charge"."charge_no" BETWEEN 1052453 AND 1412171