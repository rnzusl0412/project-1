
CREATE TABLE PM (
PM_NO NUMBER(10) PRIMARY KEY, 
PM_CONO NUMBER(10), 
PM_TEAM VARCHAR2(100),
PM_LEADER_ID VARCHAR2(30),
PM_DAY DATE, 
PM_FILE VARCHAR2(100),
PM_CURM NUMBER(10),
PM_LIMITM NUMBER(10),
PM_PRIMARY VARCHAR2(4000),
PM_FUNC VARCHAR2(4000),
PM_EFFECT VARCHAR2(4000),
PM_REQSK VARCHAR2(4000),
PM_ACCSK VARCHAR2(4000),
PM_LO NUMBER(10)
);

INSERT INTO PM values(SEQ_03.NEXTVAL,3,'qqq','qqq',sysdate,'qqq',0,4,'qqq','qqq','qqq','qqq','qqq',0);

select * from pm;

SELECT A.CP_ID,B.PM_NO,B.PM_TEAM FROM CP A LEFT OUTER JOIN PM B ON A.CP_PMNO = B.PM_NO WHERE B.PM_NO = 62
SELECT B.PM_NO,C.CO_NAME,B.PM_TEAM FROM CP A LEFT OUTER JOIN PM B ON A.CP_PMNO = B.PM_NO LEFT OUTER JOIN CO C ON B.PM_CONO = C.CO_NO WHERE A.CP_ID = 'a1';
select * from cp;
SELECT count(*) FROM CP WHERE CP_PMNO = 62;
SELECT * FROM PM WHERE PM_CONO = 128 and PM_LEADER_ID = 'www'

ALTER TABLE PM ADD CONSTRAINT PM_01 UNIQUE (PM_TEAM);
ALTER TABLE PM ADD CONSTRAINT PM_02 FOREIGN KEY (PM_CONO) REFERENCES CO(CO_NO);

SELECT * FROM PM;

CREATE SEQUENCE SEQ_03 
START WITH 1
INCREMENT BY 1;

SELECT * FROM PM WHERE PM_NO = ?;
SELECT * FROM PM WHERE PM_CONO = ?;
SELECT * FROM PM WHERE PM_TEAM LIKE = '%?%';

SELECT * FROM PM A RIGHT OUTER JOIN CO B ON A.PM_CONO = B.CO_NO;
SELECT * FROM PM A LEFT OUTER JOIN CP B ON A.PM_ = B.CP_PMNO;



INSERT PM VALUES (?,?,?,?,?);

DELETE PM WHERE PM_NO = ?;

UPDATE PM SET PM_TEAM = ? WHERE PM_NO = ?;
UPDATE PM SET PM_DAY = ? WHERE PM_NO = ?;
UPDATE PM SET PM_FILE = ? WHERE PM_NO = ?;
UPDATE PM SET PM_URL = ? WHERE PM_NO = ?;