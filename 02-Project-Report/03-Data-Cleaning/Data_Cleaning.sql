
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