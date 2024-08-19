/*+ HashJoin(ci cn ct it1 it2 kt mc mi1 n pi rt t) NestLoop(ci cn it1 it2 kt mc mi1 n pi rt t) NestLoop(ci it1 it2 kt mc mi1 n pi rt t) NestLoop(ci it1 it2 kt mi1 n pi rt t) HashJoin(ci it2 kt mi1 n pi rt t) HashJoin(ci it2 mi1 n pi rt t) HashJoin(ci it2 mi1 n pi t) HashJoin(ci it2 n pi) NestLoop(it2 n pi) NestLoop(n pi) HashJoin(mi1 t)  Leading(((((it1 ((((ci (it2 (pi n))) (mi1 t)) rt) kt)) mc) cn) ct)) SeqScan(ct) IndexScan(cn) IndexScan(mc) SeqScan(it1) SeqScan(kt) SeqScan(rt) SeqScan(ci) SeqScan(it2) BitmapScan(pi) IndexScan(n) BitmapScan(mi1) SeqScan(t)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM (((info_type as it1 CROSS JOIN ((((cast_info as ci CROSS JOIN (info_type as it2 CROSS JOIN (person_info as pi CROSS JOIN name as n))) CROSS JOIN (movie_info as mi1 CROSS JOIN title as t)) CROSS JOIN role_type as rt) CROSS JOIN kind_type as kt)) CROSS JOIN movie_companies as mc) CROSS JOIN company_name as cn) CROSS JOIN company_type as ct WHERE t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.movie_id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info_type_id = it1.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND ci.person_id = pi.person_id
AND (kt.kind IN ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role IN ('cinematographer','composer','editor','guest','miscellaneous crew','production designer','writer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1945)
AND (it1.id IN ('4'))
AND (mi1.info ILIKE '%ar%')
AND (pi.info ILIKE '%1900%')
AND (it2.id IN ('21'))
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC