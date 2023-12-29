/*+ NestLoop(ci cn ct it kt mc mi1 n rt t) HashJoin(ci cn ct it kt mc mi1 rt t) NestLoop(ci cn ct it kt mc mi1 t) NestLoop(cn ct it kt mc mi1 t) HashJoin(cn ct kt mc mi1 t) NestLoop(cn kt mc mi1 t) HashJoin(cn kt mc t) HashJoin(cn mc) NestLoop(kt t)  Leading(((((it ((((mc cn) (kt t)) mi1) ct)) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it) SeqScan(ct) IndexScan(mi1) SeqScan(mc) SeqScan(cn) SeqScan(kt) BitmapScan(t)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM (((info_type as it CROSS JOIN ((((movie_companies as mc CROSS JOIN company_name as cn) CROSS JOIN (kind_type as kt CROSS JOIN title as t)) CROSS JOIN movie_info as mi1) CROSS JOIN company_type as ct)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE t.id = mc.movie_id
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
AND (kt.kind ILIKE '%se%')
AND (rt.role IN ('actor','actress','composer','costume designer','editor','guest','miscellaneous crew','producer','production designer','writer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1945)
AND (it.id IN ('3'))
AND (mi1.info ILIKE '%c%')
AND (cn.name ILIKE '%pr%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
