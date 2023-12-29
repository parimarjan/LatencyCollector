/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) NestLoop(kt mi2 t) NestLoop(kt t)  Leading(((((((((t kt) mi2) mi1) it1) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) IndexScan(mi2) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM (((((((title as t CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','East Germany','Japan','Philippines','Spain','Sweden','Switzerland','UK'))
AND (mi2.info IN ('Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','director','guest','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.111)','(#1.15)','(#2.21)','(#3.26)','AFL-NFL World Championship Game','Anna','By the Book','Doctors Wives','It Started with Eve','Quinta puntata','Ricochet','Song of Russia','Terror','The Dark Angel','The FBI Story','The Gold Rush','The Guiding Light','The Outcast','The Undercover Man','Under Suspicion'))
