




-- q15 using 3532 as a seed to the RNG


select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier, -- skan_memo_stash_15
	(select
		l_suppkey as supplier_no,
		sum(l_extendedprice * (1 - l_discount)) as total_revenue
	from
		lineitem
	where
		l_shipdate >= '1997-05-01'
		and l_shipdate < dateadd(mm, 3, '1997-05-01')
	group by
		l_suppkey) revenue
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
	(select
		l_suppkey as supplier_no,
		sum(l_extendedprice * (1 - l_discount)) as total_revenue
	from
		lineitem
	where
		l_shipdate >= '1997-05-01'
		and l_shipdate < dateadd(mm, 3, '1997-05-01')
	group by
		l_suppkey) revenue
	)
order by
	s_suppkey