




-- q20 using 13213 as a seed to the RNG


select
	s_name,
	s_address
from
	supplier, -- skan_memo_stash_20
	nation
where
	s_suppkey in (
		select
			ps_suppkey
		from
			partsupp
		where
			ps_partkey in (
				select
					p_partkey
				from
					part
				where
					p_name like 'deep%'
			)
			and ps_availqty > (
				select
					0.5 * sum(l_quantity)
				from
					lineitem
				where
					l_partkey = ps_partkey
					and l_suppkey = ps_suppkey
					and l_shipdate >= '1994-01-01'
					and l_shipdate < dateadd(yy, 1, '1994-01-01')
			)
	)
	and s_nationkey = n_nationkey
	and n_name = 'CANADA'
order by
	s_name