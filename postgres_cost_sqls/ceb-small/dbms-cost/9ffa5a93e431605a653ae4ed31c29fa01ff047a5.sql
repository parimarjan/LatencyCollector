/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it2 kt mi1 n pi rt t) HashJoin(ci it2 kt n pi rt t) NestLoop(ci it2 n pi rt t) HashJoin(ci it2 n pi rt) NestLoop(ci it2 n pi) NestLoop(it2 n pi) NestLoop(n pi)  Leading((it1 ((((((it2 (pi n)) ci) rt) t) kt) mi1))) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(rt) IndexScan(ci) SeqScan(it2) BitmapScan(pi) IndexOnlyScan(n)   */ explain (format json) SELECT mi1.info, pi.info, COUNT(*)
FROM info_type as it1 CROSS JOIN ((((((info_type as it2 CROSS JOIN (person_info as pi CROSS JOIN name as n)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) WHERE
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
AND (mi1.info ILIKE '%germ%')
AND (pi.info ILIKE '%1937%')
AND (kt.kind IN ('movie','tv mini series','tv movie','tv series','video game','video movie'))
AND (rt.role IN ('actress','cinematographer','composer','costume designer','director','producer','writer'))
GROUP BY mi1.info, pi.info
