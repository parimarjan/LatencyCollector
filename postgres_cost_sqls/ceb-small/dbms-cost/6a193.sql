/*+ NestLoop(an ci it1 it3 it4 it5 kt mi1 mii1 mii2 n pi1 rt t) NestLoop(an ci it1 it3 it4 kt mi1 mii1 mii2 n pi1 rt t) NestLoop(an ci it1 it3 it4 kt mi1 mii1 mii2 n rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 n rt t) NestLoop(ci it1 it3 kt mi1 mii1 mii2 n rt t) NestLoop(ci it1 kt mi1 mii1 mii2 n rt t) NestLoop(ci kt mi1 mii1 mii2 n rt t) NestLoop(ci mi1 mii1 mii2 n rt t) NestLoop(ci mii1 mii2 n rt t) HashJoin(ci mii1 mii2 rt t) NestLoop(ci mii1 mii2 t) NestLoop(mii1 mii2 t) NestLoop(mii1 mii2)  Leading((((((((((((((mii1 mii2) t) ci) rt) n) mi1) kt) it1) it3) it4) an) pi1) it5)) SeqScan(it5) IndexScan(pi1) IndexOnlyScan(an) SeqScan(it4) SeqScan(it3) IndexOnlyScan(it1) IndexScan(kt) IndexScan(mi1) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(t) BitmapScan(mii1) IndexScan(mii2)   */ explain (format json) SELECT COUNT(*)
FROM ((((((((((((movie_info_idx as mii1 CROSS JOIN movie_info_idx as mii2) CROSS JOIN title as t) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_info as mi1) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it1) CROSS JOIN info_type as it3) CROSS JOIN info_type as it4) CROSS JOIN aka_name as an) CROSS JOIN person_info as pi1) CROSS JOIN info_type as it5 WHERE
t.id = mi1.movie_id
AND t.id = ci.movie_id
AND t.id = mii1.movie_id
AND t.id = mii2.movie_id
AND mii2.movie_id = mii1.movie_id
AND mi1.movie_id = mii1.movie_id
AND mi1.info_type_id = it1.id
AND mii1.info_type_id = it3.id
AND mii2.info_type_id = it4.id
AND t.kind_id = kt.id
AND (kt.kind IN ('episode','movie'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (mi1.info IN ('DTS','Dolby SR','Dolby'))
AND (it1.id IN ('15','6'))
AND it3.id = '100'
AND it4.id = '101'
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii2.info::float <= 8.0)
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 0.0 <= mii2.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 1000.0 <= mii1.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii1.info::float <= 10000.0)
AND n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it5.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4524','A5352','C6235','F6536','G6316','J2565','J515','J5216','M2423','R1425','R3261','R5262','S5242','W4523'))
AND (ci.note in ('(executive producer)','(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer'))
AND (it5.id in ('26'))
