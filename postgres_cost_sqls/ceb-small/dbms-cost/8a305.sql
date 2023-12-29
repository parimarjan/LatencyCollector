/*+ NestLoop(ci cn ct it1 k kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk rt t) NestLoop(ci cn ct kt mc mi1 mk rt t) NestLoop(ci cn ct kt mc mk rt t) NestLoop(ci cn ct kt mc mk t) NestLoop(cn ct kt mc mk t) NestLoop(cn ct kt mc t) NestLoop(cn ct mc t) NestLoop(cn ct mc) NestLoop(cn mc)  Leading((((((rt (((((ct (cn mc)) t) kt) mk) ci)) mi1) it1) n) k)) IndexOnlyScan(k) IndexScan(n) SeqScan(it1) IndexScan(mi1) SeqScan(rt) IndexScan(ci) IndexScan(mk) SeqScan(kt) IndexScan(t) SeqScan(ct) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT COUNT(*) FROM ((((role_type as rt CROSS JOIN (((((company_type as ct CROSS JOIN (company_name as cn CROSS JOIN movie_companies as mc)) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_keyword as mk) CROSS JOIN cast_info as ci)) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN name as n) CROSS JOIN keyword as k WHERE
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
AND (it1.id IN ('6'))
AND (mi1.info in ('Mono','Stereo'))
AND (kt.kind in ('episode','tv movie'))
AND (rt.role in ('actor'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5352','C6421','F6521','F6525','J52','J5252','J5265','J5425','M2416','M2425','R1636'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)','National Broadcasting Company (NBC)'))
AND (ct.kind in ('distributors'))
