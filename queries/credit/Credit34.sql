SELECT SUM("charge"."member_no" + "charge"."charge_amt") as agg_0, AVG("charge"."charge_amt") as agg_1 FROM "catery" LEFT OUTER JOIN "charge" ON "catery"."catery_no" = "charge"."catery_no"  WHERE "catery"."catery_desc" = 'Misc' AND "catery"."catery_desc" NOT LIKE '%M%eals%'