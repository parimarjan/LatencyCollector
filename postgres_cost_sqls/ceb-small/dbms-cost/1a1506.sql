/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 kt mi1 mi2 n rt t) NestLoop(ci kt mi1 mi2 n rt t) HashJoin(ci kt mi1 mi2 rt t) NestLoop(ci kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) HashJoin(kt mi1 t) HashJoin(kt t)  Leading((it2 (it1 (((((mi1 (t kt)) mi2) ci) rt) n)))) SeqScan(it2) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(mi2) BitmapScan(mi1) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM info_type as it2 CROSS JOIN (info_type as it1 CROSS JOIN (((((movie_info as mi1 CROSS JOIN (title as t CROSS JOIN kind_type as kt)) CROSS JOIN movie_info as mi2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n)) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND it1.id = '8'
AND it2.id = '4'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Argentina','Brazil','Canada','Czechoslovakia','Germany','Greece','Italy','Mexico','Philippines','Turkey','USA','West Germany','Yugoslavia')
AND mi2.info IN ('Czech','English','German','Greek','Italian','Portuguese','Serbo-Croatian','Spanish','Tagalog','Turkish')
AND kt.kind IN ('tv series','video game','video movie')
AND rt.role IN ('producer')
AND n.gender IN ('m')
AND t.production_year <= 1975
AND 1875 < t.production_year