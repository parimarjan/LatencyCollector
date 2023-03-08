SELECT MIN("IMG_OBJ"."W") as agg_0 FROM "IMG_OBJ" LEFT OUTER JOIN "OBJ_CLASSES" ON "IMG_OBJ"."OBJ_CLASS_ID" = "OBJ_CLASSES"."OBJ_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "IMG_OBJ"."IMG_ID" = "IMG_OBJ_ATT"."IMG_ID" LEFT OUTER JOIN "ATT_CLASSES" ON "IMG_OBJ_ATT"."ATT_CLASS_ID" = "ATT_CLASSES"."ATT_CLASS_ID" LEFT OUTER JOIN "IMG_REL" ON "IMG_OBJ"."IMG_ID" = "IMG_REL"."IMG_ID"  WHERE "ATT_CLASSES"."ATT_CLASS_ID" BETWEEN 448 AND 488 AND "IMG_REL"."IMG_ID" >= 2379256 AND ("IMG_OBJ_ATT"."ATT_CLASS_ID" <= 669 OR "IMG_OBJ_ATT"."ATT_CLASS_ID" BETWEEN 696 AND 1949) AND "OBJ_CLASSES"."OBJ_CLASS" IN ('bowl', 'shelf', 'awning', 'train', 'edge') AND "IMG_OBJ"."W" BETWEEN 116 AND 163