SELECT AVG("client"."client_id") as agg_0 FROM "client"  WHERE "client"."kraj" LIKE '%Králo%véhradecký%' AND ("client"."obor" != 'David' OR "client"."obor" != 'Richard' OR "client"."obor" NOT LIKE '%Ga%briel%') AND "client"."client_id" <= 97732