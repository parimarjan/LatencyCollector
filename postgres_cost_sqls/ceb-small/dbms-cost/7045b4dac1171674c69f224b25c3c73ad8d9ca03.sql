/*+ HashJoin(ci cn ct it kt mc mi1 n rt t) HashJoin(ci cn ct it kt mc mi1 n t) HashJoin(ci cn ct it kt mc mi1 t) NestLoop(cn ct it kt mc mi1 t) HashJoin(cn ct kt mc mi1 t) HashJoin(cn ct mc mi1 t) HashJoin(cn mc mi1 t) HashJoin(mi1 t) HashJoin(cn mc)  Leading((((ci (it ((((mi1 t) (mc cn)) ct) kt))) n) rt)) SeqScan(rt) SeqScan(n) SeqScan(ci) SeqScan(it) SeqScan(kt) SeqScan(ct) BitmapScan(mi1) SeqScan(t) SeqScan(mc) SeqScan(cn)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM ((cast_info as ci CROSS JOIN (info_type as it CROSS JOIN ((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN (movie_companies as mc CROSS JOIN company_name as cn)) CROSS JOIN company_type as ct) CROSS JOIN kind_type as kt))) CROSS JOIN name as n) CROSS JOIN role_type as rt WHERE t.id = mc.movie_id
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
AND (kt.kind ILIKE '%s%')
AND (rt.role IN ('actor','composer','costume designer','director','producer','production designer','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (it.id IN ('3'))
AND (mi1.info ILIKE '%d%')
AND (cn.name ILIKE '%fil%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
