SELECT AVG("ATT_CLASSES"."ATT_CLASS_ID") as agg_0, SUM("ATT_CLASSES"."ATT_CLASS_ID") as agg_1 FROM "ATT_CLASSES"  WHERE "ATT_CLASSES"."ATT_CLASS_ID" <= 1017 AND "ATT_CLASSES"."ATT_CLASS" NOT LIKE '%and%' AND "ATT_CLASSES"."ATT_CLASS" LIKE '%re%d%'