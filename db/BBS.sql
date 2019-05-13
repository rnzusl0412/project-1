
CREATE TABLE BBS (
BBS_CO NUMBER(10) NOT NULL,
BBS_NO NUMBER(10) PRIMARY KEY, 
BBS_TIT VARCHAR2(100) NOT NULL, 
BBS_USER VARCHAR2(100), 
BBS_DATE DATE, 
BBS_CON VARCHAR2(4000) NOT NULL, 
BBS_LO NUMBER(10),
BBS_FILE VARCHAR(100)
);

CREATE SEQUENCE SEQ_01 
START WITH 1
INCREMENT BY 1;

drop table bbs;
drop sequence seq_01;

ALTER TABLE BBS ADD CONSTRAINT BBS_01 FOREIGN KEY (BBS_USER) REFERENCES CUSTOMER(C_ID);

SELECT * FROM BBS;
SELECT * FROM BBS WHERE BBS_TIT like '%?%';
SELECT * FROM BBS WHERE BBS_USER like '%?%';
SELECT * FROM BBS WHERE BBS_DATE BETWEEN ? AND ?;
SELECT * FROM BBS WHERE BBS_CON like '%?%';
SELECT * FROM BBS WHERE BBS_FILE IS NOT NULL;


SELECT * FROM BBS A LEFT OUTER JOIN RE B ON A.BBS_NO = B.RE.BNO;


INSERT INTO BBS VALUES (SEQ_01.NEXTVAL,?,?,?,?,?,?,?);		

DELETE BBS WHERE BBS_NO = ?;

UPDATE BBS SET BBC_TIT=? WHERE BBS_NO = ?;
UPDATE BBS SET BBC_CON=? WHERE BBS_NO = ?;

