SELECT COUNT(*) as agg_0, COUNT(*) as agg_1 FROM "ATT_CLASSES"  WHERE "ATT_CLASSES"."ATT_CLASS" IN ('dark colored', 'vertical', 'building s', 'rusted', 'upside down', 'airborne', 'oval', 'outdoors') AND "ATT_CLASSES"."ATT_CLASS_ID" <= 1095 AND "ATT_CLASSES"."ATT_CLASS" NOT LIKE '%r%ed%'