SELECT COUNT(*) FROM title AS t,cast_info AS ci,movie_info AS mi WHERE t.id=ci.movie_id AND t.id=mi.movie_id AND ci.role_id=2 AND mi.info_type_id=3