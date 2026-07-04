
COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2022/faers_ascii_2022Q1/ASCII/DEMO22Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2022,
    quarter=1
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2022/faers_ascii_2022Q1/ASCII/DRUG22Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2022,
    quarter=1
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2022/faers_ascii_2022Q1/ASCII/REAC22Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2022,
    quarter=1
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q1/ASCII/OUTC22Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2022,
    quarter=1
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q1/ASCII/THER22Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2022,
    quarter=1
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2022/faers_ascii_2022Q2/ASCII/DEMO22Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2022,
    quarter=2
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2022/faers_ascii_2022Q2/ASCII/DRUG22Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2022,
    quarter=2
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2022/faers_ascii_2022Q2/ASCII/REAC22Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2022,
    quarter=2
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q2/ASCII/OUTC22Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2022,
    quarter=2
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q2/ASCII/THER22Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2022,
    quarter=2
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2022/faers_ascii_2022Q3/ASCII/DEMO22Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2022,
    quarter=3
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2022/faers_ascii_2022Q3/ASCII/DRUG22Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2022,
    quarter=3
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2022/faers_ascii_2022Q3/ASCII/REAC22Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2022,
    quarter=3
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q3/ASCII/OUTC22Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2022,
    quarter=3
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q3/ASCII/THER22Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2022,
    quarter=3
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2022/faers_ascii_2022Q4/ASCII/DEMO22Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2022,
    quarter=4
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2022/faers_ascii_2022Q4/ASCII/DRUG22Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2022,
    quarter=4
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2022/faers_ascii_2022Q4/ASCII/REAC22Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2022,
    quarter=4
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q4/ASCII/OUTC22Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2022,
    quarter=4
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2022/faers_ascii_2022Q4/ASCII/THER22Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2022,
    quarter=4
WHERE year IS NULL;

-----------------------------------------------------
COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2023/faers_ascii_2023Q1/ASCII/DEMO23Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2023,
    quarter=1
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2023/faers_ascii_2023Q1/ASCII/DRUG23Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2023,
    quarter=1
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2023/faers_ascii_2023Q1/ASCII/REAC23Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2023,
    quarter=1
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q1/ASCII/OUTC23Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2023,
    quarter=1
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q1/ASCII/THER23Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2023,
    quarter=1
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2023/faers_ascii_2023Q2/ASCII/DEMO23Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2023,
    quarter=2
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2023/faers_ascii_2023Q2/ASCII/DRUG23Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2023,
    quarter=2
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2023/faers_ascii_2023Q2/ASCII/REAC23Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2023,
    quarter=2
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q2/ASCII/OUTC23Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2023,
    quarter=2
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q2/ASCII/THER23Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2023,
    quarter=2
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2023/faers_ascii_2023Q3/ASCII/DEMO23Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2023,
    quarter=3
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2023/faers_ascii_2023Q3/ASCII/DRUG23Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2023,
    quarter=3
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2023/faers_ascii_2023Q3/ASCII/REAC23Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2023,
    quarter=3
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q3/ASCII/OUTC23Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2023,
    quarter=3
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q3/ASCII/THER23Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2023,
    quarter=3
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2023/faers_ascii_2023Q4/ASCII/DEMO23Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2023,
    quarter=4
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2023/faers_ascii_2023Q4/ASCII/DRUG23Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2023,
    quarter=4
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2023/faers_ascii_2023Q4/ASCII/REAC23Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2023,
    quarter=4
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q4/ASCII/OUTC23Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2023,
    quarter=4
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2023/faers_ascii_2023Q4/ASCII/THER23Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2023,
    quarter=4
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2024/faers_ascii_2024Q1/ASCII/DEMO24Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2024,
    quarter=1
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2024/faers_ascii_2024Q1/ASCII/DRUG24Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2024,
    quarter=1
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2024/faers_ascii_2024Q1/ASCII/REAC24Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2024,
    quarter=1
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q1/ASCII/OUTC24Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2024,
    quarter=1
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q1/ASCII/THER24Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2024,
    quarter=1
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2024/faers_ascii_2024Q2/ASCII/DEMO24Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2024,
    quarter=2
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2024/faers_ascii_2024Q2/ASCII/DRUG24Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2024,
    quarter=2
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2024/faers_ascii_2024Q2/ASCII/REAC24Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2024,
    quarter=2
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q2/ASCII/OUTC24Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2024,
    quarter=2
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q2/ASCII/THER24Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2024,
    quarter=2
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2024/faers_ascii_2024Q3/ASCII/DEMO24Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2024,
    quarter=3
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2024/faers_ascii_2024Q3/ASCII/DRUG24Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2024,
    quarter=3
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2024/faers_ascii_2024Q3/ASCII/REAC24Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2024,
    quarter=3
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q3/ASCII/OUTC24Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2024,
    quarter=3
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q3/ASCII/THER24Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2024,
    quarter=3
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2024/faers_ascii_2024Q4/ASCII/DEMO24Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2024,
    quarter=4
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2024/faers_ascii_2024Q4/ASCII/DRUG24Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2024,
    quarter=4
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2024/faers_ascii_2024Q4/ASCII/REAC24Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2024,
    quarter=4
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q4/ASCII/OUTC24Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2024,
    quarter=4
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2024/faers_ascii_2024Q4/ASCII/THER24Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2024,
    quarter=4
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2025/faers_ascii_2025Q1/ASCII/DEMO25Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2025,
    quarter=1
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2025/faers_ascii_2025Q1/ASCII/DRUG25Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2025,
    quarter=1
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2025/faers_ascii_2025Q1/ASCII/REAC25Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2025,
    quarter=1
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q1/ASCII/OUTC25Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2025,
    quarter=1
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q1/ASCII/THER25Q1.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2025,
    quarter=1
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2025/faers_ascii_2025Q2/ASCII/DEMO25Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2025,
    quarter=2
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2025/faers_ascii_2025Q2/ASCII/DRUG25Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2025,
    quarter=2
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2025/faers_ascii_2025Q2/ASCII/REAC25Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2025,
    quarter=2
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q2/ASCII/OUTC25Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2025,
    quarter=2
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q2/ASCII/THER25Q2.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2025,
    quarter=2
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2025/faers_ascii_2025Q3/ASCII/DEMO25Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2025,
    quarter=3
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2025/faers_ascii_2025Q3/ASCII/DRUG25Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2025,
    quarter=3
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2025/faers_ascii_2025Q3/ASCII/REAC25Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2025,
    quarter=3
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q3/ASCII/OUTC25Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2025,
    quarter=3
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q3/ASCII/THER25Q3.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2025,
    quarter=3
WHERE year IS NULL;


COPY demo_raw(

primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country

)
FROM '/faers_data/2025/faers_ascii_2025Q4/ASCII/DEMO25Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE demo_raw
SET year=2025,
    quarter=4
WHERE year IS NULL;


COPY drug_raw(

primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq

)
FROM '/faers_data/2025/faers_ascii_2025Q4/ASCII/DRUG25Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE drug_raw
SET year=2025,
    quarter=4
WHERE year IS NULL;


COPY reac_raw(
primaryid,caseid,pt,drug_rec_act
)
FROM '/faers_data/2025/faers_ascii_2025Q4/ASCII/REAC25Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE reac_raw
SET year=2025,
    quarter=4
WHERE year IS NULL;


COPY outc_raw(
primaryid,caseid,outc_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q4/ASCII/OUTC25Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE outc_raw
SET year=2025,
    quarter=4
WHERE year IS NULL;


COPY ther_raw(
primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod
)
FROM '/faers_data/2025/faers_ascii_2025Q4/ASCII/THER25Q4.txt'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE ther_raw
SET year=2025,
    quarter=4
WHERE year IS NULL;




SELECT COUNT(*)
FROM outc_raw
WHERE year IS NULL;



SELECT year, quarter, COUNT(*) AS rows
FROM ther_raw
GROUP BY year, quarter
ORDER BY year, quarter;
