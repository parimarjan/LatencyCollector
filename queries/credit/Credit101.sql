SELECT AVG("region"."mail_code" + "corporation"."corp_no") as agg_0, AVG("corporation"."region_no") as agg_1 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no"  WHERE "corporation"."corp_name" != 'Corp. Boston Sail MakersInc.' AND "region"."city" IN ('Sao Paulo', 'Tokyo', 'Mombassa', 'Beijing', 'Madras', 'Budapest', 'Goteborg', 'Toronto') AND "corporation"."street" != ' ' AND "region"."mail_code" BETWEEN nan AND nan AND "region"."region_name" NOT LIKE '%Japan%'