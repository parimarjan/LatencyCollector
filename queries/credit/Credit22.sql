SELECT COUNT(*) as agg_0, SUM("member"."corp_no") as agg_1, AVG("member"."curr_balance") as agg_2 FROM "member"  WHERE "member"."curr_balance" >= 0.0 AND "member"."firstname" != 'KVAILCBTQJWYQX'