/*+ Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 it4 mk k an pi1 #17255) Rows(it5 #1) Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 it4 mk k an #17895) Rows(pi1 #1) Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 it4 mk k #21168) Rows(an #1) Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 it4 mk #21168) Rows(k #1) Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 it4 #154) Rows(mk #137) Rows(mii1 mii2 t ci rt n mi1 kt it1 it3 #154) Rows(it4 #1) Rows(mii1 mii2 t ci rt n mi1 kt it1 #154) Rows(it3 #1) Rows(mii1 mii2 t ci rt n mi1 kt #157) Rows(it1 #1) Rows(mii1 mii2 t ci rt n mi1 #161) Rows(kt #1) Rows(mii1 mii2 t ci rt n #3601) Rows(mi1 #0) Rows(mii1 mii2 t ci rt #244298) Rows(n #0) Rows(mii1 mii2 t ci #269001) Rows(rt #5) Rows(mii1 mii2 t #6317) Rows(ci #43) Rows(mii1 mii2 #6995) Rows(t #1) Rows(mii1 #7543) Rows(mii2 #1) NestLoop(an ci it1 it3 it4 it5 k kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(an ci it1 it3 it4 k kt mi1 mii1 mii2 mk n pi1 rt t) NestLoop(an ci it1 it3 it4 k kt mi1 mii1 mii2 mk n rt t) NestLoop(ci it1 it3 it4 k kt mi1 mii1 mii2 mk n rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 mk n rt t) NestLoop(ci it1 it3 it4 kt mi1 mii1 mii2 n rt t) NestLoop(ci it1 it3 kt mi1 mii1 mii2 n rt t) NestLoop(ci it1 kt mi1 mii1 mii2 n rt t) NestLoop(ci kt mi1 mii1 mii2 n rt t) NestLoop(ci mi1 mii1 mii2 n rt t) NestLoop(ci mii1 mii2 n rt t) HashJoin(ci mii1 mii2 rt t) NestLoop(ci mii1 mii2 t) NestLoop(mii1 mii2 t) NestLoop(mii1 mii2)  Leading((((((((((((((((mii1 mii2) t) ci) rt) n) mi1) kt) it1) it3) it4) mk) k) an) pi1) it5)) SeqScan(it5) IndexScan(pi1) IndexOnlyScan(an) IndexOnlyScan(k) IndexScan(mk) SeqScan(it4) SeqScan(it3) IndexOnlyScan(it1) IndexScan(kt) IndexScan(mi1) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(t) BitmapScan(mii1) IndexScan(mii2)   */ explain (format json) SELECT COUNT(*)
FROM ((((((((((((((movie_info_idx as mii1 CROSS JOIN movie_info_idx as mii2) CROSS JOIN title as t) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_info as mi1) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it1) CROSS JOIN info_type as it3) CROSS JOIN info_type as it4) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k) CROSS JOIN aka_name as an) CROSS JOIN person_info as pi1) CROSS JOIN info_type as it5 WHERE
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
AND (mi1.info IN ('Black and White'))
AND (it1.id IN ('13','2'))
AND it3.id = '100'
AND it4.id = '101'
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii2.info::float <= 8.0)
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 0.0 <= mii2.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 5000.0 <= mii1.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii1.info::float <= 500000.0)
AND n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it5.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4253','A5141','A5253','A5363','A5365','B1626','B6523','C6235','G1642','G6256','J5214','J526','L6524','S525','W4125'))
AND (ci.note in ('(executive producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','editor','producer','writer'))
AND (it5.id in ('34'))
