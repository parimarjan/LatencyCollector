/*+ NestLoop(an ci it1 it3 it4 it5 k kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(an ci it1 it3 it4 k kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(ci it1 it3 it4 k kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 n pi1 rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 pi1 rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 rt t) NestLoop(ci it1 it3 kt mi1 mii1 mii2 rt t) NestLoop(ci it1 kt mi1 mii1 mii2 rt t) NestLoop(ci kt mi1 mii1 mii2 rt t) NestLoop(ci mi1 mii1 mii2 rt t) HashJoin(ci mii1 mii2 rt t) NestLoop(ci mii1 mii2 t) NestLoop(mii1 mii2 t) NestLoop(mii1 mii2)  Leading((((((((((((((((mii1 mii2) t) ci) rt) mi1) kt) it1) it3) it4) pi1) n) mk) k) an) it5)) SeqScan(it5) IndexOnlyScan(an) IndexOnlyScan(k) IndexScan(mk) IndexScan(n) IndexScan(pi1) SeqScan(it4) SeqScan(it3) IndexOnlyScan(it1) IndexScan(kt) IndexScan(mi1) SeqScan(rt) IndexScan(ci) IndexScan(t) BitmapScan(mii1) IndexScan(mii2)   */ explain (format json) SELECT COUNT(*)
FROM ((((((((((((((movie_info_idx as mii1 CROSS JOIN movie_info_idx as mii2) CROSS JOIN title as t) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN movie_info as mi1) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it1) CROSS JOIN info_type as it3) CROSS JOIN info_type as it4) CROSS JOIN person_info as pi1) CROSS JOIN name as n) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k) CROSS JOIN aka_name as an) CROSS JOIN info_type as it5 WHERE
t.id = mi1.movie_id
AND t.id = ci.movie_id
AND t.id = mii1.movie_id
AND t.id = mii2.movie_id
AND t.id = mk.movie_id
AND mk.keyword_id = k.id
AND mi1.info_type_id = it1.id
AND mii1.info_type_id = it3.id
AND mii2.info_type_id = it4.id
AND t.kind_id = kt.id
AND (kt.kind IN ('episode','movie'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (mi1.info IN ('$10,000','China','Finland','Greece','Ireland','Israel','Paris, France','Poland','Sweden','Switzerland','West Germany'))
AND (it1.id IN ('105','18','8'))
AND it3.id = '100'
AND it4.id = '101'
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii2.info::float <= 8.0)
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 0.0 <= mii2.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 0.0 <= mii1.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii1.info::float <= 10000.0)
AND n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it5.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND rt.id = ci.role_id
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('D1313','D5431','D5456','G4163','H526','L6523','P1426','R2532','S2153','S3163','S5242'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor'))
AND (it5.id in ('22'))