SELECT SUM("IMG_OBJ"."W" + "IMG_OBJ"."H") as agg_0 FROM "IMG_OBJ_ATT" LEFT OUTER JOIN "IMG_OBJ" ON "IMG_OBJ_ATT"."IMG_ID" = "IMG_OBJ"."IMG_ID" LEFT OUTER JOIN "IMG_REL" ON "IMG_OBJ"."IMG_ID" = "IMG_REL"."IMG_ID" LEFT OUTER JOIN "ATT_CLASSES" ON "IMG_OBJ_ATT"."ATT_CLASS_ID" = "ATT_CLASSES"."ATT_CLASS_ID"  WHERE "IMG_OBJ_ATT"."IMG_ID" <= 2666169 AND "IMG_REL"."OBJ2_SAMPLE_ID" >= 5 AND "ATT_CLASSES"."ATT_CLASS_ID" >= 283 AND "ATT_CLASSES"."ATT_CLASS" NOT LIKE '%blu%e%' AND ("IMG_OBJ_ATT"."OBJ_SAMPLE_ID" <= 18 OR "IMG_OBJ_ATT"."OBJ_SAMPLE_ID" <= 2 OR "IMG_OBJ_ATT"."OBJ_SAMPLE_ID" <= 14)