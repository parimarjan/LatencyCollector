/*+ NestLoop(ci cn ct it kt mc mi1 n rt t) NestLoop(ci cn ct it kt mc mi1 rt t) NestLoop(ci cn ct it kt mc mi1 t) NestLoop(cn ct it kt mc mi1 t) NestLoop(cn ct kt mc mi1 t) NestLoop(cn kt mc mi1 t) NestLoop(cn kt mc t) NestLoop(cn mc t) NestLoop(cn mc)  Leading(((((it (ct ((kt ((cn mc) t)) mi1))) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it) SeqScan(ct) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM (((info_type as it CROSS JOIN (company_type as ct CROSS JOIN ((kind_type as kt CROSS JOIN ((company_name as cn CROSS JOIN movie_companies as mc) CROSS JOIN title as t)) CROSS JOIN movie_info as mi1))) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE t.id = mc.movie_id
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
AND (kt.kind ILIKE '%vid%')
AND (rt.role IN ('cinematographer','composer','costume designer','director','guest','miscellaneous crew','producer','production designer','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1875)
AND (it.id IN ('5'))
AND (mi1.info ILIKE '%p%')
AND (cn.name ILIKE '%anch%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
