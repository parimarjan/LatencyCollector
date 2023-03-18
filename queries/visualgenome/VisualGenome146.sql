SELECT MAX("IMG_OBJ"."W" + "IMG_OBJ"."Y") as agg_0, MIN("IMG_OBJ"."Y") as agg_1 FROM "OBJ_CLASSES" LEFT OUTER JOIN "IMG_OBJ" ON "OBJ_CLASSES"."OBJ_CLASS_ID" = "IMG_OBJ"."OBJ_CLASS_ID" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "IMG_OBJ"."IMG_ID" = "IMG_OBJ_ATT"."IMG_ID"  WHERE "IMG_OBJ"."IMG_ID" <= 4803388 AND "OBJ_CLASSES"."OBJ_CLASS_ID" BETWEEN 434 AND 676 AND "IMG_OBJ"."OBJ_SAMPLE_ID" >= 8 AND "IMG_OBJ"."X" >= 1120 AND "IMG_OBJ_ATT"."ATT_CLASS_ID" BETWEEN 681 AND 693 AND "IMG_OBJ"."W" <= 21