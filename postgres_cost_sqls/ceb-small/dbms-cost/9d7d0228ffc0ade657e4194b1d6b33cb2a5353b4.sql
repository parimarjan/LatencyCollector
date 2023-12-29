/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) HashJoin(ci kt mi1 n pi rt t) NestLoop(ci mi1 n pi rt t) HashJoin(ci mi1 n pi rt) HashJoin(ci n pi rt) NestLoop(ci n pi) NestLoop(n pi)  Leading((it2 (it1 (((mi1 (((pi n) ci) rt)) t) kt)))) SeqScan(it2) SeqScan(it1) SeqScan(kt) IndexScan(t) BitmapScan(mi1) SeqScan(rt) IndexScan(ci) BitmapScan(pi) IndexOnlyScan(n)   */ explain (format json) SELECT mi1.info, pi.info, COUNT(*)
FROM info_type as it2 CROSS JOIN (info_type as it1 CROSS JOIN (((movie_info as mi1 CROSS JOIN (((person_info as pi CROSS JOIN name as n) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt)) CROSS JOIN title as t) CROSS JOIN kind_type as kt)) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('103'))
AND (it2.id IN ('29'))
AND (mi1.info ILIKE '%pa%')
AND (pi.info ILIKE '%18%')
AND (kt.kind IN ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role IN ('actor','actress','composer','director','editor','miscellaneous crew','producer','production designer','writer'))
GROUP BY mi1.info, pi.info
