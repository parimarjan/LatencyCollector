SELECT SUM("IMG_REL"."OBJ1_SAMPLE_ID" + "IMG_REL"."PRED_CLASS_ID") as agg_0 FROM "IMG_REL"  WHERE "IMG_REL"."OBJ2_SAMPLE_ID" >= 11 AND "IMG_REL"."OBJ1_SAMPLE_ID" BETWEEN 2 AND 15 AND ("IMG_REL"."IMG_ID" >= 2382681 OR "IMG_REL"."IMG_ID" >= 4783357 OR "IMG_REL"."IMG_ID" >= 2396778)