CREATE TABLE PMS (
PMS_NO NUMBER(10) PRIMARY KEY,
PMS_ID VARCHAR2(30),
PMS_PMNO NUMBER(10),
PMS_MISSION VARCHAR2(100),
PMS_ST DATE,
PMS_END DATE
)

ALTER TABLE PMS ADD CONSTRAINT PMS_01 FOREIGN KEY (PMS_ID) REFERENCES CUSTOMER(C_ID);
ALTER TABLE PMS ADD CONSTRAINT PMS_02 FOREIGN KEY (PMS_PMNO) REFERENCES PM(PM_NO);