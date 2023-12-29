/*+ Rows(cn mc ct t kt mi1 it1 mk ci rt n #56892) Rows(k #1) Rows(cn mc ct t kt mi1 it1 mk ci rt #10757948) Rows(n #0) Rows(cn mc ct t kt mi1 it1 mk ci #18466387) Rows(rt #1) Rows(cn mc ct t kt mi1 it1 mk #356771) Rows(ci #52) Rows(cn mc ct t kt mi1 it1 #40124) Rows(mk #9) Rows(cn mc ct t kt mi1 #40124) Rows(it1 #1) Rows(cn mc ct t kt #62412) Rows(mi1 #1) Rows(cn mc ct t #64106) Rows(kt #2) Rows(cn mc ct #95356) Rows(t #1) Rows(cn mc #95356) Rows(ct #1) Rows(cn #37) Rows(mc #2577) NestLoop(ci cn ct it1 k kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk n rt t) NestLoop(ci cn ct it1 kt mc mi1 mk rt t) NestLoop(ci cn ct it1 kt mc mi1 mk t) NestLoop(cn ct it1 kt mc mi1 mk t) NestLoop(cn ct it1 kt mc mi1 t) NestLoop(cn ct kt mc mi1 t) NestLoop(cn ct kt mc t) NestLoop(cn ct mc t) NestLoop(cn ct mc) NestLoop(cn mc)  Leading((((((((((((cn mc) ct) t) kt) mi1) it1) mk) ci) rt) n) k)) IndexOnlyScan(k) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(mk) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(ct) SeqScan(cn) IndexScan(mc)   */ explain (format json) SELECT COUNT(*) FROM ((((((((((company_name as cn CROSS JOIN movie_companies as mc) CROSS JOIN company_type as ct) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN movie_keyword as mk) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN keyword as k WHERE
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
AND (mi1.info in ('Mono'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','producer'))
AND (n.gender in ('m'))
AND (n.name_pcode_cf in ('A5362','B6261','D1232','O4252','R363','W5165'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Metro-Goldwyn-Mayer (MGM)','Paramount Pictures','Pathé Frères'))
AND (ct.kind in ('distributors','production companies'))
