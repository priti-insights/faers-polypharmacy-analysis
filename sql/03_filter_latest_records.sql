-- ==========================================================
-- Filter Latest Case Version Records
-- ==========================================================

-- -------------------------
-- DEMO
-- -------------------------

DROP TABLE IF EXISTS demo_clean;

CREATE TABLE demo_clean AS
SELECT
    d.primaryid,
    d.caseid,
    d.caseversion,
    d.event_dt,
    d.fda_dt,
    d.sex,
    d.year,
    d.quarter,

    CASE
        WHEN d.age_cod = 'YR' THEN d.age
        WHEN d.age_cod = 'DEC' THEN d.age * 10
        WHEN d.age_cod = 'MON' THEN d.age / 12.0
        WHEN d.age_cod = 'WK' THEN d.age / 52.14
        WHEN d.age_cod = 'DY' THEN d.age / 365.25
        WHEN d.age_cod = 'HR' THEN d.age / (365.25 * 24)
        ELSE NULL
    END AS age_years

FROM demo_raw d
JOIN latest_cases l
ON d.caseid = l.caseid
AND d.caseversion = l.latest_caseversion;

-- -------------------------
-- DRUG
-- -------------------------

DROP TABLE IF EXISTS drug_clean;

CREATE TABLE drug_clean AS
SELECT d.*
FROM drug_raw d
JOIN latest_cases l
ON d.caseid = l.caseid;

-- -------------------------
-- REAC
-- -------------------------

DROP TABLE IF EXISTS reac_clean;

CREATE TABLE reac_clean AS
SELECT r.*
FROM reac_raw r
JOIN latest_cases l
ON r.caseid = l.caseid;

-- -------------------------
-- OUTC
-- -------------------------

DROP TABLE IF EXISTS outc_clean;

CREATE TABLE outc_clean AS
SELECT o.*
FROM outc_raw o
JOIN latest_cases l
ON o.caseid = l.caseid;

-- -------------------------
-- THER
-- -------------------------

DROP TABLE IF EXISTS ther_clean;

CREATE TABLE ther_clean AS
SELECT t.*
FROM ther_raw t
JOIN latest_cases l
ON t.caseid = l.caseid;
