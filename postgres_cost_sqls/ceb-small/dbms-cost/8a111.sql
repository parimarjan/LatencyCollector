/*+ NestLoop(ci cn ct it1 k kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 n rt t) NestLoop(ci cn ct it1 kt mc mi1 rt t) NestLoop(ci cn ct it1 kt mc mi1 t) NestLoop(cn ct it1 kt mc mi1 t) NestLoop(cn ct kt mc mi1 t) NestLoop(cn ct kt mc t) NestLoop(cn ct mc t) NestLoop(cn ct mc) NestLoop(cn mc)  Leading((((((((((((cn mc) ct) t) kt) mi1) it1) ci) rt) n) mk) k)) IndexOnlyScan(k) IndexScan(mk) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(ct) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT COUNT(*) FROM ((((((((((company_name as cn CROSS JOIN movie_companies as mc) CROSS JOIN company_type as ct) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
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
AND (it1.id IN ('8'))
AND (mi1.info in ('UK','USA'))
AND (kt.kind in ('movie','tv movie','tv series'))
AND (rt.role in ('actress','director'))
AND (n.gender in ('f'))
AND (n.surname_pcode in ('B4','D25','D62','G6','M62','P6','S','S532','W3') OR n.surname_pcode IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (cn.name in ('ABS-CBN','British Broadcasting Corporation (BBC)','Columbia Broadcasting System (CBS)','Granada Television','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
