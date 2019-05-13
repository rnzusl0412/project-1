
CREATE TABLE NEWS (
NE_NO NUMBER(20)  PRIMARY KEY, 
NE_TIT VARCHAR2(100), 
NE_CL VARCHAR2(30), 
NE_URL VARCHAR2(100), 
NE_STIT VARCHAR2(100), 
NE_EXP VARCHAR2(4000),
NE_ST DATE, 
NE_UP DATE, 
NE_COM VARCHAR2(30), 
NE_REP VARCHAR2(30)
);


SELECT * FROM NEWS WHERE NE_TIT LIKE '%?%';
SELECT * FROM NEWS WHERE NE_STIT LIKE '%?%';
SELECT * FROM NEWS WHERE NE_CL = ?;
SELECT * FROM NEWS WHERE NE_EXP LIKE '%?%';
SELECT * FROM NEWS WHERE NE_COM LIKE '%?%';
SELECT * FROM NEWS WHERE NE_REP LIKE '%?%';

INSERT INTO NEWS VALUES (?,?,?,?,?,?,?,?);

DELETE NEWS WHERE NE_NO = ?;

UPDATE NEWS SET NE_TIT = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_CL = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_URL = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_STIT = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_ST = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_COM = ? WHERE NE_NO = ?;
UPDATE NEWS SET NE_REP = ? WHERE NE_NO = ?;

