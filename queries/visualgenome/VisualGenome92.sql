SELECT MIN("ATT_CLASSES"."ATT_CLASS_ID" + "IMG_OBJ_ATT"."OBJ_SAMPLE_ID") as agg_0, MIN("IMG_OBJ_ATT"."OBJ_SAMPLE_ID" + "ATT_CLASSES"."ATT_CLASS_ID") as agg_1 FROM "IMG_OBJ_ATT" LEFT OUTER JOIN "ATT_CLASSES" ON "IMG_OBJ_ATT"."ATT_CLASS_ID" = "ATT_CLASSES"."ATT_CLASS_ID"  WHERE "IMG_OBJ_ATT"."OBJ_SAMPLE_ID" >= 55 AND "IMG_OBJ_ATT"."IMG_ID" >= 2372193 AND "ATT_CLASSES"."ATT_CLASS_ID" BETWEEN 561 AND 710