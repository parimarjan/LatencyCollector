SELECT MIN("ATT_CLASSES"."ATT_CLASS_ID") as agg_0, MAX("IMG_OBJ_ATT"."IMG_ID" + "IMG_OBJ_ATT"."OBJ_SAMPLE_ID") as agg_1, MAX("IMG_OBJ_ATT"."IMG_ID" + "IMG_OBJ_ATT"."OBJ_SAMPLE_ID") as agg_2 FROM "IMG_OBJ_ATT" LEFT OUTER JOIN "ATT_CLASSES" ON "IMG_OBJ_ATT"."ATT_CLASS_ID" = "ATT_CLASSES"."ATT_CLASS_ID"  WHERE "ATT_CLASSES"."ATT_CLASS" LIKE '%red%' AND "ATT_CLASSES"."ATT_CLASS_ID" <= 1336 AND "ATT_CLASSES"."ATT_CLASS" LIKE '%dark%' AND "IMG_OBJ_ATT"."OBJ_SAMPLE_ID" <= 10 AND "IMG_OBJ_ATT"."ATT_CLASS_ID" <= 695 AND "IMG_OBJ_ATT"."IMG_ID" <= 3865682