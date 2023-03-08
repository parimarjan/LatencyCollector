SELECT COUNT(*) as agg_0, COUNT(*) as agg_1, MAX("IMG_OBJ"."OBJ_SAMPLE_ID" + "IMG_OBJ"."H") as agg_2 FROM "IMG_OBJ" LEFT OUTER JOIN "IMG_REL" ON "IMG_OBJ"."IMG_ID" = "IMG_REL"."IMG_ID" LEFT OUTER JOIN "OBJ_CLASSES" ON "IMG_OBJ"."OBJ_CLASS_ID" = "OBJ_CLASSES"."OBJ_CLASS_ID" LEFT OUTER JOIN "PRED_CLASSES" ON "IMG_REL"."PRED_CLASS_ID" = "PRED_CLASSES"."PRED_CLASS_ID"  WHERE "OBJ_CLASSES"."OBJ_CLASS_ID" >= 274 AND "PRED_CLASSES"."PRED_CLASS" = 'crossing' AND "IMG_REL"."IMG_ID" <= 2385382 AND "IMG_REL"."OBJ1_SAMPLE_ID" <= 3 AND "IMG_OBJ"."W" >= 32