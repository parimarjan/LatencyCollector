SELECT AVG("IMG_OBJ"."Y") as agg_0, SUM("IMG_OBJ"."IMG_ID") as agg_1, MIN("IMG_REL"."OBJ2_SAMPLE_ID") as agg_2 FROM "IMG_REL" LEFT OUTER JOIN "PRED_CLASSES" ON "IMG_REL"."PRED_CLASS_ID" = "PRED_CLASSES"."PRED_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ" ON "IMG_REL"."IMG_ID" = "IMG_OBJ"."IMG_ID"  WHERE "PRED_CLASSES"."PRED_CLASS" IN ('playing on', 'painted on', 'against', 'to', 'from')