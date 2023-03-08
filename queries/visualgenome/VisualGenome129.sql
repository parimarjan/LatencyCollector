SELECT MAX("IMG_OBJ"."OBJ_SAMPLE_ID") as agg_0 FROM "IMG_REL" LEFT OUTER JOIN "IMG_OBJ" ON "IMG_REL"."IMG_ID" = "IMG_OBJ"."IMG_ID" LEFT OUTER JOIN "OBJ_CLASSES" ON "IMG_OBJ"."OBJ_CLASS_ID" = "OBJ_CLASSES"."OBJ_CLASS_ID"  WHERE ("OBJ_CLASSES"."OBJ_CLASS" IN ('edge', 'reflection', 'shelf', 'neck', 'bus', 'awning') OR "OBJ_CLASSES"."OBJ_CLASS" != 'horn' OR "OBJ_CLASSES"."OBJ_CLASS" IN ('train', 'awning', 'bowl')) AND "IMG_REL"."OBJ2_SAMPLE_ID" BETWEEN 2 AND 7 AND ("IMG_REL"."IMG_ID" >= 7253387 OR ("IMG_REL"."OBJ1_SAMPLE_ID" <= 74 AND "IMG_REL"."IMG_ID" >= 111991)) AND "IMG_REL"."PRED_CLASS_ID" >= 72 AND "IMG_OBJ"."Y" >= 140 AND "OBJ_CLASSES"."OBJ_CLASS_ID" >= 40