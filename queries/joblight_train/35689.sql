SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_info_idx AS mi_idx WHERE t.id=mc.movie_id AND t.id=mi_idx.movie_id AND t.kind_id>1 AND t.production_year<2011 AND mi_idx.info_type_id<100