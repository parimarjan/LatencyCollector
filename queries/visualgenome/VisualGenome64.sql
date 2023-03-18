SELECT COUNT(*) as agg_0, MIN("IMG_OBJ_ATT"."ATT_CLASS_ID" + "IMG_OBJ"."H") as agg_1, SUM("IMG_OBJ"."H" + "ATT_CLASSES"."ATT_CLASS_ID") as agg_2 FROM "ATT_CLASSES" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "ATT_CLASSES"."ATT_CLASS_ID" = "IMG_OBJ_ATT"."ATT_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ" ON "IMG_OBJ_ATT"."IMG_ID" = "IMG_OBJ"."IMG_ID"  WHERE "ATT_CLASSES"."ATT_CLASS" != 'gray' AND "IMG_OBJ_ATT"."IMG_ID" >= 1732994