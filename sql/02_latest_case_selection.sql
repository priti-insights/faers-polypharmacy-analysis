DROP TABLE IF EXISTS latest_cases;

CREATE TABLE latest_cases AS
SELECT
    caseid,
    MAX(caseversion) AS latest_caseversion
FROM demo_raw
GROUP BY caseid;
