/*+ NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci it1 kt mi1 rt t) NestLoop(ci it1 kt mi1 t) NestLoop(it1 kt mi1 t) NestLoop(it1 mi1 t) HashJoin(it1 mi1)  Leading(((((((mi1 it1) t) kt) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(kt) IndexScan(t) SeqScan(mi1) SeqScan(it1)   */ explain (format json) SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM (((((movie_info as mi1 CROSS JOIN info_type as it1) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('2','3','8'))
AND (mi1.info IN ('Adult','Italy'))
AND (n.name ILIKE '%morell%')
AND (kt.kind IN ('tv series','video game','video movie'))
AND (rt.role IN ('director','miscellaneous crew','producer','production designer'))
GROUP BY mi1.info, n.name