SELECT SUM("IMG_REL"."IMG_ID" + "IMG_REL"."OBJ2_SAMPLE_ID") as agg_0 FROM "PRED_CLASSES" LEFT OUTER JOIN "IMG_REL" ON "PRED_CLASSES"."PRED_CLASS_ID" = "IMG_REL"."PRED_CLASS_ID"  WHERE "PRED_CLASSES"."PRED_CLASS_ID" >= 73 AND "PRED_CLASSES"."PRED_CLASS" NOT LIKE '%ins%ide%'