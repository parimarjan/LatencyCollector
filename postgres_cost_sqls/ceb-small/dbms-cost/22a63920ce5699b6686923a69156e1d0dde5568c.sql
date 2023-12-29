/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) HashJoin(ci it2 kt mi1 n pi rt t) HashJoin(ci it2 mi1 n pi rt t) HashJoin(ci it2 mi1 n pi t) NestLoop(ci mi1 t) NestLoop(mi1 t) NestLoop(it2 n pi) NestLoop(n pi)  Leading((it1 (((((mi1 t) ci) (it2 (pi n))) rt) kt))) SeqScan(it1) SeqScan(kt) SeqScan(rt) IndexScan(ci) SeqScan(mi1) IndexScan(t) SeqScan(it2) BitmapScan(pi) IndexOnlyScan(n)   */ explain (format json) SELECT mi1.info, pi.info, COUNT(*)
FROM info_type as it1 CROSS JOIN (((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN cast_info as ci) CROSS JOIN (info_type as it2 CROSS JOIN (person_info as pi CROSS JOIN name as n))) CROSS JOIN role_type as rt) CROSS JOIN kind_type as kt) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('16'))
AND (it2.id IN ('23'))
AND (mi1.info ILIKE '%gre%')
AND (pi.info ILIKE '%194%')
AND (kt.kind IN ('episode','movie','tv mini series','tv movie','tv series','video game','video movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer','editor','miscellaneous crew','producer','production designer','writer'))
GROUP BY mi1.info, pi.info
