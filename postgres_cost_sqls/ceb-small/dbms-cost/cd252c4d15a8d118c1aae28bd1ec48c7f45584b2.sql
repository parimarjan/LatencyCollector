/*+ NestLoop(ci cn ct it kt mc mi1 n rt t) HashJoin(ci cn ct it kt mc mi1 rt t) NestLoop(ci rt) NestLoop(cn ct it kt mc mi1 t) HashJoin(cn ct kt mc mi1 t) HashJoin(cn ct mc mi1 t) HashJoin(cn mc mi1 t) HashJoin(mi1 t) HashJoin(cn mc)  Leading((((rt ci) (it ((((mi1 t) (mc cn)) ct) kt))) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it) SeqScan(kt) SeqScan(ct) BitmapScan(mi1) SeqScan(t) SeqScan(mc) SeqScan(cn)   */ explain (format json) SELECT n.gender, rt.role, cn.name, COUNT(*)
FROM ((role_type as rt CROSS JOIN cast_info as ci) CROSS JOIN (info_type as it CROSS JOIN ((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN (movie_companies as mc CROSS JOIN company_name as cn)) CROSS JOIN company_type as ct) CROSS JOIN kind_type as kt))) CROSS JOIN name as n WHERE t.id = mc.movie_id
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
AND (rt.role IN ('actress','producer','production designer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1945)
AND (it.id IN ('2'))
AND (mi1.info ILIKE '%c%')
AND (cn.name ILIKE '%fi%')
GROUP BY n.gender, rt.role, cn.name
ORDER BY COUNT(*) DESC
