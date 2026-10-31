--checking if id is unique																Unique
select count(id), count (distinct id)
from credit_default_risk;

--loan_amnt max and min values															50-40,000
select min(loan_amnt), max(loan_amnt)
from credit_default_risk cdr ;

--loan_amnt null%																		100%
select 100 * count(loan_amnt)/count(*) as null_pct
from credit_default_risk;

--funded_amnt max and min values														50-40,000
select min(funded_amnt), max(funded_amnt)
from credit_default_risk cdr ;

--funded_amnt null%																		100%
select 100 * count(funded_amnt)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of term column												36 months, 60 months
select term, count (*)
from credit_default_risk
group by term;

--term null%																			100%
select 100 * count(term)/count(*) as null_pct
from credit_default_risk;

--int_rate min and max values															5.31-30.99
select min(int_rate), max(int_rate)
from credit_default_risk cdr ;

--int_rate null%																		100%					
select 100 * count(int_rate)/count(*) as null_pct
from credit_default_risk;

--installment min and max values														4.93-1719.83
select min(installment), max(installment)
from credit_default_risk cdr ;

--installment null%																		100%
select 100 * count(installment)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of grade														A, B, C, D, E, F, G
select grade, count (*)
from credit_default_risk
group by grade;

--grade null%																			100%
select 100 * count(grade)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of sub_grade													A(1-5), B(1-5), C(1-5), D(1-5), E(1-5), F(1-5), G(1-5)
select sub_grade, count (*)
from credit_default_risk
group by sub_grade;

--sub_grade null%																		100%
select 100 * count(sub_grade)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of emp_length												< 1 year, 1 year, 10+ year, 2 years, 3 years, 4 years, 5 years, 6 years, 7 years, 8 years, 9 years
select emp_length, count (*)
from credit_default_risk
group by emp_length;

--emp_length null%																		100%
select 100 * count(grade)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of home_ownership											ANY, MORTGAGE, NONE, OTHER, OWN, RENT
select home_ownership, count (*)
from credit_default_risk
group by home_ownership;

--home_ownership null%																	100%
select 100 * count(home_ownership)/count(*) as null_pct
from credit_default_risk;

--annual_inc max and min values															0-110,000,000
select min(annual_inc), max(annual_inc)
from credit_default_risk cdr ;

--annual_inc null%																		99%
select 100 * count(annual_inc)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of verification_status										Not Verified, Source Verified, Verified
select verification_status, count (*)
from credit_default_risk
group by verification_status;

--verification_status null%																100%
select 100 * count(verification_status)/count(*) as null_pct
from credit_default_risk;

--issue_d max and min values															2007-06-01 - 2018-12-01
select min(issue_d), max(issue_d)
from credit_default_risk cdr ;

--issue_d null%																			100%
select 100 * count(issue_d)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of loan_status												Charged Off, Currect, Default, Fully Paid, In Grace Period, Late(16-30 days), Late(31-120 days)
select loan_status, count(*)
from credit_default_risk
group by loan_status;

--loan_status null%																		100%
select 100 * count(loan_status)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of purpose													car, credit card, debt_consolidation, educational, home_improvement, house, major_purchase
--																						medical, moving, other, renewable_energy, small_business, vacation, wedding
select purpose, count(*)											
from credit_default_risk
group by purpose;

--purpose null%																			100%
select 100 * count(purpose)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of addr_state												51 states
select addr_state, count(*)
from credit_default_risk
group by addr_state;

--addr_state null%																		100%
select 100 * count(addr_state)/count(*) as null_pct
from credit_default_risk;


--dti max and min values																(-1)-999
select min(dti), max(dti)
from credit_default_risk cdr ;

--dti null%																				99%
select 100 * count(dti)/count(*) as null_pct
from credit_default_risk;

--delinq_2yrs max and min values														0-58
select min(delinq_2yrs), max(delinq_2yrs)
from credit_default_risk cdr ;

--delinq_2yrs null%																		99%
select 100 * count(delinq_2yrs)/count(*) as null_pct
from credit_default_risk;

--earliest_cr_line max and min values													1933-03-01 - 2015-11-01
select min(earliest_cr_line), max(earliest_cr_line)
from credit_default_risk cdr ;

--earliest_cr_line null%																99%
select 100 * count(earliest_cr_line)/count(*) as null_pct
from credit_default_risk;

--fico_range_low max and min values														610-845
select min(fico_range_low), max(fico_range_low)
from credit_default_risk cdr ;

--fico_range_low null%																	100%
select 100 * count(fico_range_low)/count(*) as null_pct
from credit_default_risk;

--fico_range_high max and min values													614-850
select min(fico_range_high), max(fico_range_high)
from credit_default_risk cdr ;

--fico_range_high null%																	100%
select 100 * count(fico_range_high)/count(*) as null_pct
from credit_default_risk;

--inq_last_6mths max and min values														0-33
select min(inq_last_6mths), max(inq_last_6mths)
from credit_default_risk cdr ;

--inq_last_6mths null%																	99%
select 100 * count(inq_last_6mths)/count(*) as null_pct
from credit_default_risk;

--mths_since_last_delinq max and min values												0-226
select min(mths_since_last_delinq), max(mths_since_last_delinq)
from credit_default_risk cdr ;

--mths_since_last_delinq null%                                                          48%
select 100 * count(mths_since_last_delinq)/count(*) as null_pct
from credit_default_risk;

--mths_since_last_record max and min values												0-129
select min(mths_since_last_record), max(mths_since_last_record)
from credit_default_risk cdr ;

--mths_since_last_record null%                                                          15%
select 100 * count(mths_since_last_record)/count(*) as null_pct
from credit_default_risk;

--open_acc max and min values															0-101
select min(open_acc), max(open_acc)
from credit_default_risk cdr ;

--open_acc null%                                                        			    99%
select 100 * count(open_acc)/count(*) as null_pct
from credit_default_risk;

--pub_rec max and min values															0-86
select min(pub_rec), max(pub_rec)
from credit_default_risk cdr ;

--pub_rec null%																			99%
select 100 * count(pub_rec)/count(*) as null_pct
from credit_default_risk;

--revol_bal max and min values															0-2,904,836
select min(revol_bal), max(revol_bal)
from credit_default_risk cdr ;

--revol_bal null%                                                        			    100%
select 100 * count(revol_bal)/count(*) as null_pct
from credit_default_risk;

--revol_util max and min values															0-892.3
select min(revol_util), max(revol_util)
from credit_default_risk cdr ;

--revol_util null%                                                        			    99%
select 100 * count(revol_util)/count(*) as null_pct
from credit_default_risk;

--total_acc max and min values															1-176
select min(total_acc), max(total_acc)
from credit_default_risk cdr ;

--total_acc null%                                                        			    99%
select 100 * count(total_acc)/count(*) as null_pct
from credit_default_risk;

--checking distinct values of application_type											Individual, Joint App
select application_type, count(*)
from credit_default_risk
group by application_type;

--application_type null%																100%
select 100 * count(application_type)/count(*) as null_pct
from credit_default_risk;


--acc_now_delinq max and min values														0-14
select min(acc_now_delinq), max(acc_now_delinq)
from credit_default_risk cdr ;

--acc_now_delinq null%                                                        		    99%
select 100 * count(acc_now_delinq)/count(*) as null_pct
from credit_default_risk;

--tot_cur_bal max and min values														0-9,971,659
select min(tot_cur_bal), max(tot_cur_bal)
from credit_default_risk cdr ;

--tot_cur_bal null%                                                        		        96%
select 100 * count(tot_cur_bal)/count(*) as null_pct
from credit_default_risk;

--open_act_il max and min values														0-57
select min(open_act_il), max(open_act_il)
from credit_default_risk cdr ;

--open_act_il null%                                                        		        61%
select 100 * count(open_act_il)/count(*) as null_pct
from credit_default_risk;

--open_il_12m max and min values														0-25
select min(open_il_12m), max(open_il_12m)
from credit_default_risk cdr ;

--open_il_12m null%                                                        		        61%
select 100 * count(open_il_12m)/count(*) as null_pct
from credit_default_risk;

--open_il_24m max and min values														0-51
select min(open_il_24m), max(open_il_24m)
from credit_default_risk cdr ;

--open_il_24m null%                                                        		        61%
select 100 * count(open_il_24m)/count(*) as null_pct
from credit_default_risk;

--mths_since_rcnt_il max and min values													0-511
select min(mths_since_rcnt_il), max(mths_since_rcnt_il)
from credit_default_risk cdr ;

--mths_since_rcnt_il null%                                                        	    59%
select 100 * count(mths_since_rcnt_il)/count(*) as null_pct
from credit_default_risk;

--total_bal_il max and min values														0-1,837,038
select min(total_bal_il), max(total_bal_il)
from credit_default_risk cdr ;

--total_bal_il null%                                                        	        61%
select 100 * count(total_bal_il)/count(*) as null_pct
from credit_default_risk;

--il_util max and min values															0-1000
select min(il_util), max(il_util)
from credit_default_risk cdr ;

--il_util null%                                                        	       		    52%
select 100 * count(il_util)/count(*) as null_pct
from credit_default_risk;

--open_rv_12m max and min values														0-28
select min(open_rv_12m), max(open_rv_12m)
from credit_default_risk cdr ;

--open_rv_12m null%                                                        	       	    61%
select 100 * count(open_rv_12m)/count(*) as null_pct
from credit_default_risk;

--open_rv_24m max and min values														0-60
select min(open_rv_24m), max(open_rv_24m)
from credit_default_risk cdr ;

--open_rv_24m null%                                                        	       	    61%
select 100 * count(open_rv_24m)/count(*) as null_pct
from credit_default_risk;

--total_rev_hi_lim max and min values													0-9,999,999
select min(total_rev_hi_lim), max(total_rev_hi_lim)
from credit_default_risk cdr ;

--total_rev_hi_lim null%                                                        	    96%
select 100 * count(total_rev_hi_lim)/count(*) as null_pct
from credit_default_risk;

--inq_last_12m max and min values														0-67
select min(inq_last_12m), max(inq_last_12m)
from credit_default_risk cdr ;

--inq_last_12m null%                                                        	   	    61%
select 100 * count(inq_last_12m)/count(*) as null_pct
from credit_default_risk;

--bc_util max and min values															0-339.6
select min(bc_util), max(bc_util)
from credit_default_risk cdr ;

--bc_util null%                                                        	   	   	 	    96%
select 100 * count(bc_util)/count(*) as null_pct
from credit_default_risk;

--delinq_amnt max and min values														0-249,925
select min(delinq_amnt), max(delinq_amnt)
from credit_default_risk cdr ;

--delinq_amnt null%                                                        	   	        99%
select 100 * count(delinq_amnt)/count(*) as null_pct
from credit_default_risk;

--mort_acc and min values																0-94
select min(mort_acc), max(mort_acc)
from credit_default_risk cdr ;

--mort_acc null%                                                        	   	        97%
select 100 * count(mort_acc)/count(*) as null_pct
from credit_default_risk;

--pub_rec_bankruptcies and min values													0-12
select min(pub_rec_bankruptcies), max(pub_rec_bankruptcies)
from credit_default_risk cdr ;

--pub_rec_bankruptcies null%                                                            99%
select 100 * count(pub_rec_bankruptcies)/count(*) as null_pct
from credit_default_risk;

--tax_liens and min values																0-85
select min(tax_liens), max(tax_liens)
from credit_default_risk cdr ;

--tax_liens null%                                                        	   	        99%
select 100 * count(tax_liens)/count(*) as null_pct
from credit_default_risk;



select * from credit_default_risk cdr; 





























