SELECT COUNT(*) FROM title AS t,cast_info AS ci,movie_info_idx AS mi_idx WHERE t.id=ci.movie_id AND t.id=mi_idx.movie_id AND ci.person_id<2922315