SELECT MAX("IMG_OBJ"."H") as agg_0, SUM("IMG_OBJ"."Y" + "IMG_OBJ"."X") as agg_1, MAX("OBJ_CLASSES"."OBJ_CLASS_ID" + "IMG_OBJ"."Y") as agg_2 FROM "OBJ_CLASSES" LEFT OUTER JOIN "IMG_OBJ" ON "OBJ_CLASSES"."OBJ_CLASS_ID" = "IMG_OBJ"."OBJ_CLASS_ID"  WHERE "OBJ_CLASSES"."OBJ_CLASS" = 'cone'