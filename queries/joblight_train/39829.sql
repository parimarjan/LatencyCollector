SELECT COUNT(*) FROM title AS t,movie_info AS mi,movie_info_idx AS mi_idx WHERE t.id=mi.movie_id AND t.id=mi_idx.movie_id AND t.kind_id<4 AND t.production_year=1995 AND mi_idx.info_type_id=100