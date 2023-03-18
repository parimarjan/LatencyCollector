SELECT AVG("IMG_OBJ"."OBJ_SAMPLE_ID") as agg_0, MAX("IMG_REL"."OBJ2_SAMPLE_ID" + "IMG_OBJ"."X") as agg_1, COUNT(*) as agg_2 FROM "OBJ_CLASSES" LEFT OUTER JOIN "IMG_OBJ" ON "OBJ_CLASSES"."OBJ_CLASS_ID" = "IMG_OBJ"."OBJ_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "IMG_OBJ"."IMG_ID" = "IMG_OBJ_ATT"."IMG_ID" LEFT OUTER JOIN "IMG_REL" ON "IMG_OBJ"."IMG_ID" = "IMG_REL"."IMG_ID"  WHERE "IMG_OBJ"."H" BETWEEN 207 AND 225 AND "IMG_REL"."PRED_CLASS_ID" <= 448