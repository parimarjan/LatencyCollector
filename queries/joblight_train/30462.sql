SELECT COUNT(*) FROM title AS t,cast_info AS ci,movie_keyword AS mk WHERE t.id=ci.movie_id AND t.id=mk.movie_id AND t.kind_id<7 AND t.production_year=1994 AND ci.person_id<3369792 AND mk.keyword_id<498