/*+ NestLoop(ci cn ct k kt mc mk n rt t) NestLoop(ci cn ct k kt mc mk rt t) NestLoop(ci cn ct k kt mc mk t) NestLoop(cn ct k kt mc mk t) NestLoop(ct k kt mc mk t) NestLoop(k kt mc mk t) NestLoop(k kt mk t) NestLoop(k mk t) NestLoop(k mk)  Leading(((rt (((((((k mk) t) kt) mc) ct) cn) ci)) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(cn) SeqScan(ct) IndexScan(mc) SeqScan(kt) IndexScan(t) SeqScan(k) BitmapScan(mk)   */ explain (format json) SELECT COUNT(*) FROM (role_type as rt CROSS JOIN (((((((keyword as k CROSS JOIN movie_keyword as mk) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_companies as mc) CROSS JOIN company_type as ct) CROSS JOIN company_name as cn) CROSS JOIN cast_info as ci)) CROSS JOIN name as n WHERE t.id = mk.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND ci.movie_id = mk.movie_id
AND mk.movie_id = mc.movie_id
AND k.id = mk.keyword_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (t.production_year <= 2015)
AND (t.production_year >= 1900)
AND (k.keyword IN ('flat-track','paris-studios-cinema','reference-to-notre-dame-university'))
AND (cn.country_code IN ('[au]','[jp]','[nl]','[us]'))
AND (ct.kind IN ('distributors','production companies'))
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('cinematographer'))
AND (n.gender IN ('m'))
