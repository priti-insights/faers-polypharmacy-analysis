DROP TABLE IF EXISTS common_primaryids;

CREATE TABLE common_primaryids AS

SELECT primaryid FROM demo_clean

INTERSECT

SELECT primaryid FROM drug_clean

INTERSECT

SELECT primaryid FROM reac_clean

INTERSECT

SELECT primaryid FROM outc_clean;
