SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_info_idx AS mi_idx WHERE t.id=mc.movie_id AND t.id=mi_idx.movie_id AND mc.company_id=5936