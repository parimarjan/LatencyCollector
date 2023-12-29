/*+ NestLoop(ci cn ct it kt mc mi1 n rt t) NestLoop(ci cn ct it kt mc mi1 rt t) NestLoop(ci cn ct it kt mc mi1 t) NestLoop(cn ct it kt mc mi1 t) NestLoop(cn ct kt mc mi1 t) NestLoop(cn ct mc mi1 t) NestLoop(cn mc mi1 t) NestLoop(cn mc t) NestLoop(cn mc)  Leading(((((it (((((cn mc) t) mi1) ct) kt)) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it) SeqScan(kt) SeqScan(ct) IndexScan(mi1) IndexScan(t) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM (((info_type as it CROSS JOIN (((((company_name as cn CROSS JOIN movie_companies as mc) CROSS JOIN title as t) CROSS JOIN movie_info as mi1) CROSS JOIN company_type as ct) CROSS JOIN kind_type as kt)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.movie_id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info_type_id = it.id
AND (kt.kind ILIKE '%m%')
AND (rt.role IN ('actor','cinematographer','composer','costume designer','guest','miscellaneous crew','production designer','writer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1945)
AND (it.id IN ('5'))
AND (mi1.info ILIKE '%n%')
AND (cn.name ILIKE '%bro%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
