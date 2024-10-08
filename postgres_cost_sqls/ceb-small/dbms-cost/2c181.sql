/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) NestLoop(kt mi2 t) NestLoop(kt t)  Leading(((((((((t kt) mi2) mi1) it1) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) IndexScan(mi2) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM (((((((title as t CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina','Austria','Brazil','Czechoslovakia','Egypt','Finland','Iran','Philippines','South Korea','UK','USA','Yugoslavia'))
AND (mi2.info IN ('Hungarian','Japanese','Korean','Mandarin','Tagalog','Turkish'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.42)','(#1.53)','(#1.67)','(#1.7)','(#2.34)','(#2.8)','(#3.20)','(#4.30)','(#5.11)','(#5.38)','A Star Is Born','Above Suspicion','Anthony Adverse','Beauty and the Beast','Blackmail','Boccaccio','Caesars Wife','Calamity Jane','Dick Tracy','Dynamite','Emergency','Eyewitness','Finale','Flash Gordon','Interlude','Love','M','Man Hunt','Mr. Smith Goes to Washington','On Trial','Pride and Prejudice','Romeo and Juliet','Sailor Beware','Stars and Stripes Forever','The Conspirators','The Golden Fleecing','The Hero','The Night Riders','The Red Badge of Courage','The Shadow','Up Front','Welcome Stranger','You Came Along'))
