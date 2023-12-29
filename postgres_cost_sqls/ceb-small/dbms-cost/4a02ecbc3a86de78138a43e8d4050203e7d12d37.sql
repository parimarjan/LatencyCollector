/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 pi rt t) HashJoin(ci it1 kt mi1 rt t) NestLoop(ci it1 kt mi1 t) NestLoop(it1 kt mi1 t) NestLoop(kt mi1 t) NestLoop(mi1 t)  Leading(((((((((mi1 t) kt) it1) ci) rt) pi) n) it2)) SeqScan(it2) IndexOnlyScan(n) IndexScan(pi) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(kt) BitmapScan(mi1) IndexScan(t)   */ explain (format json) SELECT mi1.info, pi.info, COUNT(*)
FROM (((((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN person_info as pi) CROSS JOIN name as n) CROSS JOIN info_type as it2 WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('90'))
AND (it2.id IN ('21'))
AND (mi1.info ILIKE '%03%')
AND (pi.info ILIKE '%186%')
AND (kt.kind IN ('episode','movie','tv mini series','tv series','video game','video movie'))
AND (rt.role IN ('actress','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
GROUP BY mi1.info, pi.info
