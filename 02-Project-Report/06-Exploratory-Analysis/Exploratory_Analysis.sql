--Distinct values of home_ownership column
select home_ownership, count(home_ownership)
from credit_default_risk cdr 
group by home_ownership;

--changing the values of home_ownership column into a more standardized values
update credit_default_risk cdr 
set home_ownership = 'OTHER'
where home_ownership = 'ANY'; 

update credit_default_risk cdr 
set home_ownership = 'OTHER'
where home_ownership = 'NONE'; 

--annual_inc distribution check
select 
	case
		when annual_inc is null or annual_inc = 0 then '0. Not reported'
		when annual_inc < 20000 then '1. Under 20k'
		when annual_inc < 40000 then '2. 20k - 40k'
		when annual_inc < 60000 then '3. 40k - 60k'
		when annual_inc < 80000 then '4. 60k - 80k'
		when annual_inc < 100000 then '5. 80k - 100k'
		when annual_inc < 150000 then '6. 100k - 150k'
		when annual_inc < 200000 then '7. 150k - 200k'
		else '8. 200k+'
	end income,
	count(*)
from credit_default_risk cdr 
group by income;

--dti distribution check
select
	case
		when dti is null then '0. Not Reported'
		when dti < 0 then 'A. Less than 0'
		when dti = 0 then 'B. Is 0'
		when dti <= 10 then 'C. 0 - 10'
		when dti <= 20 then 'D. 11 - 20'
		when dti <= 30 then 'E. 21 - 30'
		when dti <= 40 then 'F. 31 - 40'
		when dti <= 50 then 'G. 41 - 50'
		when dti <= 60 then 'H. 51 - 60'
		when dti <= 70 then 'I. 61 - 70'
		when dti <= 80 then 'J. 71 - 80'
		when dti <= 90 then 'K. 81 - 90'
		when dti <= 100 then 'L. 91 - 100'
		when dti <= 300 then 'M. 101 - 300'
		when dti <= 600 then 'N. 301 - 600'
		when dti <= 998 then 'O. 601 - 998'
		when dti = 999 then 'P. Is 999'
	end dti_range,
	count(*)
from credit_default_risk
group by dti_range;

-- mths_since_last_delinq distribution check
select id, acc_now_delinq, mths_since_last_delinq
from credit_default_risk cdr 
where acc_now_delinq = 0 and mths_since_last_delinq is null
order by mths_since_last_delinq;

--mths_since_last_record
select pub_rec > 0 AS has_public_record,
      count(*) AS loans,
      count(mths_since_last_record) AS has_value
from credit_default_risk
group by has_public_record;

--revol_util distribution check
select 
	case
		when revol_util is null then 'A. Not Reported'
		when revol_util <= 20 then 'B. 0 - 20' 
		when revol_util <= 40 then 'C. 21 - 40'
		when revol_util <= 60 then 'D. 41 - 60'
		when revol_util <= 80 then 'E. 61 - 80'
		when revol_util <= 100 then 'F. 81 - 100'
		when revol_util <= 110 then 'G. 101 - 110'
		when revol_util <= 200 then 'H. 111 - 200'
		when revol_util <= 900 then 'I. 201 - 900'
	end revol_util_range,
	count(*) 
from credit_default_risk cdr 
group by 1
order by 1;

--total_rev_hi_lim distribution check
select
	case 
		when total_rev_hi_lim is null then 'A. Not reported'
		when total_rev_hi_lim <= 10000 then 'B. 0 - 10k'
		when total_rev_hi_lim <= 20000 then 'C. 10K - 20k'
		when total_rev_hi_lim <= 30000 then 'D. 20K - 30k'
		when total_rev_hi_lim <= 40000 then 'E. 30K - 40k'
		when total_rev_hi_lim <= 50000 then 'F. 40K - 50k'
		when total_rev_hi_lim <= 100000 then 'G. 50K - 100k'
		when total_rev_hi_lim <= 500000 then 'H. 100k - 500k'
		when total_rev_hi_lim <= 1000000 then 'I. 500k - 1M'
		when total_rev_hi_lim <= 5000000 then 'J. 1M - 5M'
		when total_rev_hi_lim <= 10000000 then 'K. 5M - 10M'
	end total_rev_hi_lim_range,
	count(*) as loans
from credit_default_risk cdr 
group by 1
order by 1;
	
--bc_util distribution check
select 
	case 
		when bc_util is null then 'A. Not Reported'
		when bc_util <= 20 then 'B. 0 - 20'
		when bc_util <= 40 then 'C. 21 - 40'
		when bc_util <= 60 then 'D. 41 - 60'
		when bc_util <= 80 then 'E. 61 - 80'
		when bc_util <= 100 then 'F. 81 - 100'
		when bc_util <= 150 then 'H. 101 - 150'
		when bc_util <= 200 then 'I. 151 - 200'
		when bc_util <= 250 then 'J. 201 - 250'
		when bc_util <= 300 then 'K. 251 - 300'
		else 'L. 300+'
	end as bc_util_range,
	count(*)
from credit_default_risk cdr 
group by 1
order by 1;







	
	
	