SELECT COUNT(*) FROM title AS t,cast_info AS ci,movie_info AS mi WHERE t.id=ci.movie_id AND t.id=mi.movie_id AND t.production_year=2003 AND ci.person_id=2232540 AND ci.role_id<4