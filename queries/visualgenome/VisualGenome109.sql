SELECT MIN("IMG_OBJ"."OBJ_SAMPLE_ID" + "IMG_REL"."PRED_CLASS_ID") as agg_0 FROM "PRED_CLASSES" LEFT OUTER JOIN "IMG_REL" ON "PRED_CLASSES"."PRED_CLASS_ID" = "IMG_REL"."PRED_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ" ON "IMG_REL"."IMG_ID" = "IMG_OBJ"."IMG_ID" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "IMG_OBJ"."IMG_ID" = "IMG_OBJ_ATT"."IMG_ID" LEFT OUTER JOIN "OBJ_CLASSES" ON "IMG_OBJ"."OBJ_CLASS_ID" = "OBJ_CLASSES"."OBJ_CLASS_ID"  WHERE "PRED_CLASSES"."PRED_CLASS_ID" <= 435 AND ("IMG_REL"."IMG_ID" BETWEEN 3083760 AND 7221427 OR ("IMG_REL"."IMG_ID" >= 4775535 AND "IMG_REL"."IMG_ID" <= 4765227)) AND ("IMG_OBJ"."X" <= 199 OR "IMG_OBJ"."H" <= 79) AND "IMG_REL"."OBJ1_SAMPLE_ID" <= 5 AND ("OBJ_CLASSES"."OBJ_CLASS_ID" <= 648 OR "OBJ_CLASSES"."OBJ_CLASS" != 'base' OR "OBJ_CLASSES"."OBJ_CLASS_ID" >= 39) AND "IMG_OBJ"."IMG_ID" BETWEEN 4753256 AND 7199699