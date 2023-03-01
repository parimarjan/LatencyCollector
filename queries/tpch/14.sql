




-- q14 using 31945 as a seed to the RNG


select
	100.00 * sum(case
		when p_type like 'PROMO%'
			then l_extendedprice * (1 - l_discount)
		else 0
	end) / sum(l_extendedprice * (1 - l_discount)) as promo_revenue
from
	lineitem, -- skan_memo_stash_14
	part
where
	l_partkey = p_partkey
	and l_shipdate >= '1997-02-01'
	and l_shipdate < dateadd(mm, 1, '1997-02-01')