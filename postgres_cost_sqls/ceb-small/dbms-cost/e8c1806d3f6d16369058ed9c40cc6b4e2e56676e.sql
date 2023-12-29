/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci it1 kt mi1 rt t) NestLoop(ci it1 kt mi1 t) NestLoop(it1 kt mi1 t) NestLoop(it1 mi1 t) HashJoin(it1 mi1)  Leading((it2 (((((((mi1 it1) t) kt) ci) rt) n) pi))) SeqScan(it2) IndexScan(pi) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(kt) IndexScan(t) SeqScan(mi1) SeqScan(it1)   */ explain (format json) SELECT mi1.info, n.name, COUNT(*)
FROM info_type as it2 CROSS JOIN (((((((movie_info as mi1 CROSS JOIN info_type as it1) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN person_info as pi) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('2','6','8'))
AND (it2.id IN ('22'))
AND (mi1.info IN ('Argentina','Australia','Chile','Dolby SR','Dolby','Germany','Hungary','Italy','Mexico','New Zealand','Peru','Poland','Stereo','UK','West Germany'))
AND (n.name ILIKE '%d%')
AND (kt.kind IN ('tv movie','tv series','video game'))
AND (rt.role IN ('costume designer','director','miscellaneous crew','producer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
