/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) HashJoin(ci it1 it2 kt mi1 pi rt t) NestLoop(it2 pi) HashJoin(ci it1 kt mi1 rt t) NestLoop(ci it1 kt mi1 t) NestLoop(it1 kt mi1 t) HashJoin(kt mi1 t) NestLoop(mi1 t)  Leading((((it2 pi) (((it1 ((mi1 t) kt)) ci) rt)) n)) IndexOnlyScan(n) SeqScan(it2) BitmapScan(pi) SeqScan(rt) IndexScan(ci) SeqScan(it1) SeqScan(kt) BitmapScan(mi1) IndexScan(t)   */ explain (format json) SELECT mi1.info, pi.info, COUNT(*)
FROM ((info_type as it2 CROSS JOIN person_info as pi) CROSS JOIN (((info_type as it1 CROSS JOIN ((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN kind_type as kt)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt)) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('106'))
AND (it2.id IN ('28'))
AND (mi1.info ILIKE '%20%')
AND (pi.info ILIKE '%cha%')
AND (kt.kind IN ('movie','tv mini series','tv movie','tv series','video game','video movie'))
AND (rt.role IN ('actor','actress','cinematographer','costume designer','director','editor','producer','writer'))
GROUP BY mi1.info, pi.info
