
SELECT MIN("member"."corp_no") as agg_0 FROM "member" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no"  WHERE "region"."street" != '%666 Sixth%' AND "region"."city" != '%Sao Paulo%' AND "region"."region_name" IN ('Eastern Europea', 'Western Europea', 'Mid East / Sout', 'South American', 'Africa');