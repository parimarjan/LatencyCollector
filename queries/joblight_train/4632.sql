SELECT COUNT(*) FROM title AS t,movie_info AS mi,movie_info_idx AS mi_idx WHERE t.id=mi.movie_id AND t.id=mi_idx.movie_id AND t.production_year<1968