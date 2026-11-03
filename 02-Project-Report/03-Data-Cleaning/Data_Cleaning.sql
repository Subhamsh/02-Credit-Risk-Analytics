select 
	case 
		when extract (year from issue_d) = 2007 then '2007'
		when extract (year from issue_d) = 2008 then '2008'
		when extract (year from issue_d) = 2009 then '2009'
		when extract (year from issue_d) = 2010 then '2010'
		when extract (year from issue_d) = 2011 then '2011'
		when extract (year from issue_d) = 2012 then '2012'
		when extract (year from issue_d) = 2013 then '2013'
		when extract (year from issue_d) = 2014 then '2014'
		when extract (year from issue_d) = 2015 then '2015'
		when extract (year from issue_d) = 2016 then '2016'
		when extract (year from issue_d) = 2017 then '2017'
		when extract (year from issue_d) = 2018 then '2018'	
	end as years,
	count(open_il_12m) as open_il_12m,
	count(open_il_24m) as open_il_24m,
	count(open_rv_12m) as open_rv_12m,
	count(open_rv_24m) as open_rv_24m,
	count(il_util) as il_util,
	count(bc_util) as bc_util
from credit_default_risk
group by years;

--Updating the loan status column with more standardize values
update credit_default_risk
set loan_status = 'Charged Off'
where loan_status = 'Does not meet the credit policy. Status:Charged Off';

update credit_default_risk
set loan_status = 'Charged Off'
where loan_status = 'Does not meet the credit policy. Status:Fully Paid';

--removing the columns that have more than 50% null counts
alter table credit_default_risk
  drop column open_il_12m,
  drop column open_il_24m,
  drop column open_rv_12m,
  drop column open_rv_24m,
  drop column il_util,
  drop column open_act_il,
  drop column mths_since_rcnt_il,
  drop column total_bal_il,
  drop column inq_last_12m;