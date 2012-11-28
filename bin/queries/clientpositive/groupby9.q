
CREATE TABLE DEST1(key INT, value STRING) STORED AS TEXTFILE;
CREATE TABLE DEST2(key INT, val1 STRING, val2 STRING) STORED AS TEXTFILE;

EXPLAIN
FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

SELECT DEST1.* FROM DEST1;
SELECT DEST2.* FROM DEST2;

EXPLAIN
FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.value, SRC.key;

FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.value, SRC.key;

SELECT DEST1.* FROM DEST1;
SELECT DEST2.* FROM DEST2;

set hive.multigroupby.singlemr=true;

EXPLAIN
FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

SELECT DEST1.* FROM DEST1;
SELECT DEST2.* FROM DEST2;

EXPLAIN
FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(SUBSTR(SRC.value,5)) GROUP BY SRC.key, SRC.value;

SELECT DEST1.* FROM DEST1;
SELECT DEST2.* FROM DEST2;

EXPLAIN
FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.value, SRC.key;

FROM SRC
INSERT OVERWRITE TABLE DEST1 SELECT SRC.key, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.key
INSERT OVERWRITE TABLE DEST2 SELECT SRC.key, SRC.value, COUNT(DISTINCT SUBSTR(SRC.value,5)) GROUP BY SRC.value, SRC.key;

SELECT DEST1.* FROM DEST1;
SELECT DEST2.* FROM DEST2;


