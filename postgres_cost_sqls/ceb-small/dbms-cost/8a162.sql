/*+ NestLoop(ci cn ct it1 k kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk rt t) NestLoop(ci cn ct it1 kt mc mi1 mk t) NestLoop(cn ct it1 kt mc mi1 mk t) NestLoop(cn ct kt mc mi1 mk t) NestLoop(cn ct kt mc mk t) NestLoop(cn ct kt mc t) NestLoop(cn ct mc t) NestLoop(cn ct mc) NestLoop(cn mc)  Leading(((((((((kt ((ct (cn mc)) t)) mk) mi1) it1) ci) rt) n) k)) IndexOnlyScan(k) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(mi1) IndexScan(mk) SeqScan(kt) IndexScan(t) SeqScan(ct) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT COUNT(*) FROM (((((((kind_type as kt CROSS JOIN ((company_type as ct CROSS JOIN (company_name as cn CROSS JOIN movie_companies as mc)) CROSS JOIN title as t)) CROSS JOIN movie_keyword as mk) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN keyword as k WHERE
t.id = ci.movie_id
AND t.id = mc.movie_id
AND t.id = mi1.movie_id
AND t.id = mk.movie_id
AND mc.company_type_id = ct.id
AND mc.company_id = cn.id
AND k.id = mk.keyword_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (it1.id IN ('7'))
AND (mi1.info in ('OFM:35 mm','OFM:Live','PFM:35 mm','PFM:Video','RAT:1.33 : 1'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','producer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_cf in ('A5362','B6261','B6526','D1232','J5252','M6352','O4252','R1632','R363','S3152','S5362','W5165'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors'))