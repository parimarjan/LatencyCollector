SELECT AVG("IMG_REL"."OBJ2_SAMPLE_ID" + "IMG_REL"."PRED_CLASS_ID") as agg_0, AVG("PRED_CLASSES"."PRED_CLASS_ID" + "IMG_REL"."IMG_ID") as agg_1 FROM "IMG_REL" LEFT OUTER JOIN "PRED_CLASSES" ON "IMG_REL"."PRED_CLASS_ID" = "PRED_CLASSES"."PRED_CLASS_ID"  WHERE "IMG_REL"."OBJ1_SAMPLE_ID" <= 45 AND "PRED_CLASSES"."PRED_CLASS" LIKE '%top%' AND ("PRED_CLASSES"."PRED_CLASS_ID" <= 307 OR ("PRED_CLASSES"."PRED_CLASS_ID" >= 341 AND "PRED_CLASSES"."PRED_CLASS_ID" BETWEEN 96 AND 331)) AND "PRED_CLASSES"."PRED_CLASS" LIKE '%ho%lding%' AND "IMG_REL"."PRED_CLASS_ID" >= 146 AND "IMG_REL"."OBJ2_SAMPLE_ID" <= 4