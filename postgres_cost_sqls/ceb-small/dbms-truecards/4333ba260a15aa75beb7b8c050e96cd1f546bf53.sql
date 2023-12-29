/*+ Rows(n ci rt t kt mi1 #236) Rows(it1 #1) Rows(n ci rt t kt #2019) Rows(mi1 #0) Rows(n ci rt t #45308) Rows(kt #2) Rows(n ci rt #45308) Rows(t #1) Rows(n ci #111969) Rows(rt #2) Rows(n #11638) Rows(ci #10) NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci kt mi1 n rt t) NestLoop(ci kt n rt t) NestLoop(ci n rt t) NestLoop(ci n rt) NestLoop(ci n)  Leading(((((((n ci) rt) t) kt) mi1) it1)) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(rt) SeqScan(n) IndexScan(ci)   */ explain (format json) SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM (((((name as n CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1 WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('5'))
AND (mi1.info IN ('Germany:12','Iceland:12','Iceland:16','Iceland:L','UK:18','USA:M','USA:T','USA:TV-PG'))
AND (n.name ILIKE '%mont%')
AND (kt.kind IN ('tv movie','video game'))
AND (rt.role IN ('actress','director','miscellaneous crew'))
GROUP BY mi1.info, n.name
