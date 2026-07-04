years = [2022, 2023, 2024, 2025]
quarters = [1, 2, 3, 4]

tables = {
    "DEMO": {
        "table": "demo_raw",
        "cols": """
primaryid,caseid,caseversion,i_f_code,event_dt,mfr_dt,init_fda_dt,
fda_dt,rept_cod,auth_num,mfr_num,mfr_sndr,lit_ref,age,age_cod,
age_grp,sex,e_sub,wt,wt_cod,rept_dt,to_mfr,occp_cod,
reporter_country,occr_country
"""
    },
    "DRUG": {
        "table": "drug_raw",
        "cols": """
primaryid,caseid,drug_seq,role_cod,drugname,prod_ai,val_vbm,
route,dose_vbm,cum_dose_chr,cum_dose_unit,dechal,rechal,
lot_num,exp_dt,nda_num,dose_amt,dose_unit,dose_form,dose_freq
"""
    },
    "REAC": {
        "table": "reac_raw",
        "cols": "primaryid,caseid,pt,drug_rec_act"
    },
    "OUTC": {
        "table": "outc_raw",
        "cols": "primaryid,caseid,outc_cod"
    },
    "THER": {
        "table": "ther_raw",
        "cols": "primaryid,caseid,dsg_drug_seq,start_dt,end_dt,dur,dur_cod"
    }
}

outfile = open("faers_import.sql", "w")

for year in years:
    for q in quarters:

        folder = f"/faers_data/{year}/faers_ascii_{year}Q{q}/ASCII"
        suffix = f"{str(year)[2:]}Q{q}"

        for prefix, info in tables.items():

            file = f"{folder}/{prefix}{suffix}.txt"

            outfile.write(f"""
COPY {info['table']}(
{info['cols']}
)
FROM '{file}'
DELIMITER '$'
CSV HEADER
ENCODING 'LATIN1';

UPDATE {info['table']}
SET year={year},
    quarter={q}
WHERE year IS NULL;

""")

outfile.close()

print("faers_import.sql generated successfully.")
