SELECT USER
FROM DUAL;
--==> SCOTT

--°€ Ω«Ω¿ ≈◊¿Ã∫Ì ª˝º∫(¡ˆø™ : REGION)
CREATE TABLE REGION
( REGIONID      NUMBER          -- ¡ˆø™ æ∆¿Ãµ -- PK
, REGIONNAME    VARCHAR2(30)    -- ¡ˆø™ ∏Ì
, CONSTRAINT REGION_ID_PK PRIMARY KEY(REGIONID)
);
--==> Table REGION¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ Ω√ƒˆΩ∫ ª˝º∫(¡ˆø™ : REGIONSEQ)
CREATE SEQUENCE REGIONSEQ
NOCACHE;
--==> Sequence REGIONSEQ¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ¡ˆø™ µ•¿Ã≈Õ ¿‘∑¬
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, 'º≠øÔ');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '∞Ê±‚');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '¿Œ√µ');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '¥Î¿¸');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '±§¡÷');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '¥Î±∏');
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ. * 6

--°€ ¡ˆø™ ∏ÆΩ∫∆Æ »Æ¿Œ
SELECT REGIONID, REGIONNAME
FROM REGION;
--> «— ¡Ÿ ±∏º∫
SELECT REGIONID, REGIONNAME FROM REGION
;
/*
1	º≠øÔ
2	∞Ê±‚
3	¿Œ√µ
4	¥Î¿¸
5	±§¡÷
6	¥Î±∏
*/

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ Ω«Ω¿ ≈◊¿Ã∫Ì ª˝º∫(¡˜¿ß : POSITION)
CREATE TABLE POSITION
( POSITIONID    NUMBER          -- ¡˜¿ß æ∆¿Ãµ -- PK
, POSITIONNAME  VARCHAR2(30)    -- ¡˜¿ß∏Ì
, MINBASICPAY   NUMBER          -- √÷º“ ±‚∫ª±ﬁ
, CONSTRAINT POSITION_ID_PK PRIMARY KEY(POSITIONID)
);
--==> Table POSITION¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ Ω√ƒˆΩ∫ ª˝º∫(¡˜¿ß : POSITIONSEQ)
CREATE SEQUENCE POSITIONSEQ
NOCACHE;
--==> Sequence POSITIONSEQ¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ¡˜¿ß µ•¿Ã≈Õ ¿‘∑¬
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, 'ªÁø¯', 1000000);
--> «— ¡Ÿ ±∏º∫
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, 'ªÁø¯', 1000000)
;
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, '¥Î∏Æ', 2000000)
;
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, '∞˙¿Â', 3000000)
;
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, '∫Œ¿Â', 4000000)
;
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ. * 4

--°€ ¡˜¿ß ∏ÆΩ∫∆Æ »Æ¿Œ
SELECT POSITIONID, POSITIONNAME, MINBASICPAY FROM POSITION
;
/*
1	ªÁø¯	1000000
2	¥Î∏Æ	2000000
3	∞˙¿Â	3000000
4	∫Œ¿Â	    4000000
*/

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ Ω«Ω¿ ≈◊¿Ã∫Ì ª˝º∫(∫Œº≠ : DEPARTMENT)
CREATE TABLE DEPARTMENT
( DEPARTMENTID      NUMBER          -- ∫Œº≠ æ∆¿Ãµ -- PK
, DEPARTMENTNAME    VARCHAR2(30)    -- ∫Œº≠∏Ì
, CONSTRAINT DEPARTMENT_ID_PK PRIMARY KEY(DEPARTMENTID)
);
--==> Table DEPARTMENT¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ Ω√ƒˆΩ∫ ª˝º∫(∫Œº≠ : DEPARTMENTSEQ)
CREATE SEQUENCE DEPARTMENTSEQ
NOCACHE;
--==> Sequence DEPARTMENTSEQ¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∫Œº≠ µ•¿Ã≈Õ ¿‘∑¬
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '∞≥πﬂ∫Œ')
;
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '±‚»π∫Œ')
;
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, 'øµæ˜∫Œ')
;
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '¿⁄¿Á∫Œ')
;
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ. * 4

--°€ ∫Œº≠ ∏ÆΩ∫∆Æ »Æ¿Œ
SELECT DEPARTMENTID, DEPARTMENTNAME
FROM DEPARTMENT;
--> «— ¡Ÿ ±∏º∫
SELECT DEPARTMENTID, DEPARTMENTNAME FROM DEPARTMENT
;
/*
1	∞≥πﬂ∫Œ
2	±‚»π∫Œ
3	øµæ˜∫Œ
4	¿⁄¿Á∫Œ
*/

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ Ω«Ω¿ ≈◊¿Ã∫Ì ª˝º∫(¡˜ø¯ : EMPLOYEE)
-- ªÁø¯π¯»£, ªÁø¯∏Ì, ¡÷πŒπ¯»£, ª˝≥‚ø˘¿œ, æÁ¿Ω∑¬, ¿¸»≠π¯»£, ∫Œº≠, ¡˜¿ß, ¡ˆø™, ±‚∫ª±ﬁ, ºˆ¥Á
CREATE TABLE EMPLOYEE
( EMPLOYEEID    NUMBER                      -- ªÁø¯ π¯»£  -- PK
, NAME          VARCHAR2(30)               -- ªÁø¯ ∏Ì
, SSN           VARCHAR2(20)                -- ¡÷πŒπ¯»£   -- æœ»£»≠ ±‚¥… ¿˚øÎ(TYPE CHECK~!!!)
, BIRTHDAY      DATE                        -- ª˝≥‚ø˘¿œ
, LUNAR         NUMBER(1) DEFAULT 0        -- æÁ¿Ω∑¬      -- CK(æÁ∑¬0, ¿Ω∑¬ 1)
, TELEPHONE     VARCHAR2(40)                -- ¿¸»≠π¯»£
, DEPARTMENTID  NUMBER                      -- ∫Œº≠ æ∆¿Ãµ -- FK
, POSITIONID    NUMBER                      -- ¡˜¿ß æ∆¿Ãµ -- FK
, REGIONID      NUMBER                      -- ¡ˆø™ æ∆¿Ãµ -- FK
, BASICPAY      NUMBER                      -- ±‚∫ª±ﬁ
, EXTRAPAY      NUMBER                      -- ºˆ¥Á
, CONSTRAINT EMPLOYEE_ID_PK PRIMARY KEY(EMPLOYEEID)
, CONSTRAINT EMPLOYEE_DEPARTMENTID_FK FOREIGN KEY(DEPARTMENTID)
              REFERENCES DEPARTMENT(DEPARTMENTID)
, CONSTRAINT EMPLOYEE_POSITIONID_FK FOREIGN KEY(POSITIONID)
              REFERENCES POSITION(POSITIONID)
, CONSTRAINT EMPLOYEE_REGIONID_FK FOREIGN KEY(REGIONID)
              REFERENCES REGION(REGIONID)
, CONSTRAINT EMPLOYEE_LUNAR_CK CHECK(LUNAR=0 OR LUNAR=1)
);
--==> Table EMPLOYEE¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ Ω√ƒˆΩ∫ ª˝º∫(¡˜ø¯ : EMPLOYEESEQ)
CREATE SEQUENCE EMPLOYEESEQ
NOCACHE;
--==> Sequence EMPLOYEESEQ¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--X ¡˜ø¯ µ•¿Ã≈Õ ¿‘∑¬ (ƒı∏ÆπÆ ∆Û±‚ °Ê SSN¿Ã ¿÷æ˙¿ª ¥ÁΩ√ «ˆ¿Á¥¬ SSN1, SSN2∑Œ ≥™¥Æ)
--INSERT INTO EMPLOYEE(EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY)
--VALUES(EMPLOYEESEQ.NEXTVAL, '∞≠«˝º∫', CRYPTPACK.ENCRYPT('9710171234567', '9710171234567'), TO_DATE('1997-10-17', 'YYYY-MM-DD'), 0, '010-6380-7047', 1, 2, 1, 2500000, 1500000);
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ.


--°ÿ ººº« º≥¡§
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
--==> Session¿Ã(∞°) ∫Ø∞Êµ«æ˙Ω¿¥œ¥Ÿ.

--°€ »Æ¿Œ
SELECT *
FROM EMPLOYEE;
--==> 1	∞≠«˝º∫	?o??^????	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

DESC EMPLOYEE;
/*
¿Ã∏ß           ≥Œ?       ¿Ø«¸           
------------ -------- ------------ 
EMPLOYEEID   NOT NULL NUMBER       
NAME                  VARCHAR2(30) 
SSN                   VARCHAR2(20) 
BIRTHDAY              DATE         
LUNAR                 NUMBER(1)    
TELEPHONE             VARCHAR2(40) 
DEPARTMENTID          NUMBER       
POSITIONID            NUMBER       
REGIONID              NUMBER       
BASICPAY              NUMBER       
EXTRAPAY              NUMBER 
*/

--°€ ¡˜ø¯ µ•¿Ã≈Õ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫
SELECT E.EMPLOYEEID
      , E.NAME
      , E.SSN
      , TO_CHAR(E.BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY
      , E.LUNAR
      , DECODE(E.LUNAR, 0, 'æÁ∑¬', 1, '¿Ω∑¬') AS LUNARNAME
      , E.TELEPHONE
      , E.DEPARTMENTID
      , (SELECT DEPARTMENTNAME
         FROM DEPARTMENT
         WHERE DEPARTMENTID=E.DEPARTMENTID) AS DEPARTMENTNAME
      , E.POSITIONID
      , (SELECT POSITIONNAME
         FROM POSITION
         WHERE POSITIONID=E.POSITIONID) AS POSITIONNAME
      , E.REGIONID
      , (SELECT REGIONNAME
         FROM REGION
         WHERE REGIONID=E.REGIONID) AS REGIONNAME
      , E.BASICPAY
      , E.EXTRAPAY
      , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY, 0) AS PAY
FROM EMPLOYEE E;
--==> 1	∞≠«˝º∫	?o??^????	1997-10-17	0	æÁ∑¬	010-6380-7047	1	∞≥πﬂ∫Œ	2	¥Î∏Æ	1	º≠øÔ	2500000	1500000	4000000

--°€ ∫‰ ª˝º∫(EMPLOYEEVIEW)
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
SELECT E.EMPLOYEEID
      , E.NAME
      , E.SSN
      , TO_CHAR(E.BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY
      , E.LUNAR
      , DECODE(E.LUNAR, 0, 'æÁ∑¬', 1, '¿Ω∑¬') AS LUNARNAME
      , E.TELEPHONE
      , E.DEPARTMENTID
      , (SELECT DEPARTMENTNAME
         FROM DEPARTMENT
         WHERE DEPARTMENTID=E.DEPARTMENTID) AS DEPARTMENTNAME
      , E.POSITIONID
      , (SELECT POSITIONNAME
         FROM POSITION
         WHERE POSITIONID=E.POSITIONID) AS POSITIONNAME
      , E.REGIONID
      , (SELECT REGIONNAME
         FROM REGION
         WHERE REGIONID=E.REGIONID) AS REGIONNAME
      , E.BASICPAY
      , E.EXTRAPAY
      , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY, 0) AS PAY
FROM EMPLOYEE E;
--==> View EMPLOYEEVIEW¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ¡ˆø™ µ•¿Ã≈Õ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫
-- ¥‹, ¡ˆø™ µ•¿Ã≈Õ ªË¡¶ ∞°¥…ø©∫Œ(DELCHECK) »Æ¿Œ ∆˜«‘
SELECT R.REGIONID, R.REGIONNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE REGIONID=R.REGIONID) AS DELCHECK
FROM REGION R;
/*
  REGIONID REGIONNAME                       DELCHECK
---------- ------------------------------ ----------
         1 º≠øÔ                                    1  °Ê ªË¡¶ ∫“∞°
         2 ∞Ê±‚                                    0  °Ê ªË¡¶ ∞°¥…
         3 ¿Œ√µ                                    0  °Ê ªË¡¶ ∞°¥…
         4 ¥Î¿¸                                    0  °Ê ªË¡¶ ∞°¥…
         5 ±§¡÷                                    0  °Ê ªË¡¶ ∞°¥…
         6 ¥Î±∏                                    0  °Ê ªË¡¶ ∞°¥…
*/
--> °∫º≠øÔ°ª¿« ¡ˆø™ µ•¿Ã≈Õ¥¬ ªË¡¶∞° ∫“∞°¥…«— ªÛ»≤¿Ã∏Á
--  °∫∞Ê±‚°ª°∫¿Œ√µ°ª°∫¥Î¿¸°ª°∫±§¡÷°ª°∫¥Î±∏°ª¿« ¡ˆø™ µ•¿Ã≈Õ¥¬
--  ªË¡¶∞° ∞°¥…«— ªÛ»≤¿”¿ª ∆«∫∞«“ ºˆ ¿÷¥¬ ƒı∏ÆπÆ

--°€ ∫‰ ª˝º∫(REGIONVIEW)
CREATE OR REPLACE VIEW REGIONVIEW
AS
SELECT R.REGIONID, R.REGIONNAME
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE REGIONID=R.REGIONID) AS DELCHECK
FROM REGION R;
--==> View REGIONVIEW¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ¡˜¿ß µ•¿Ã≈Õ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫
--   ¥‹, ¡˜¿ß µ•¿Ã≈Õ ªË¡¶ ∞°¥…ø©∫Œ(DELCHECK) »Æ¿Œ ∆˜«‘
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE POSITIONID=P.POSITIONID) AS DELCHECK
FROM POSITION P;
/*
POSITIONID POSITIONNAME                   MINBASICPAY   DELCHECK
---------- ------------------------------ ----------- ----------
         1 ªÁø¯                               1000000          0  °Ê ªË¡¶ ∞°¥…
         2 ¥Î∏Æ                               2000000          1  °Ê ªË¡¶ ∫“∞°
         3 ∞˙¿Â                               3000000          0  °Ê ªË¡¶ ∞°¥…
         4 ∫Œ¿Â                               4000000          0  °Ê ªË¡¶ ∞°¥…
*/

--°€ ∫‰ ª˝º∫(POSITIONVIEW)
CREATE OR REPLACE VIEW POSITIONVIEW
AS
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
      , (SELECT COUNT(*)
         FROM EMPLOYEE
         WHERE POSITIONID=P.POSITIONID) AS DELCHECK
FROM POSITION P;
--==> View POSITIONVIEW¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.


--°€ ∫Œº≠ µ•¿Ã≈Õ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫
--   ¥‹, ∫Œº≠ µ•¿Ã≈Õ ªË¡¶ ∞°¥…ø©∫Œ(DELCHECK) »Æ¿Œ ∆˜«‘
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
    , (SELECT COUNT(*)
       FROM EMPLOYEE
       WHERE DEPARTMENTID=D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
/*
1	∞≥πﬂ∫Œ	1   °Ê ªË¡¶ ∫“∞°
2	±‚»π∫Œ	0   °Ê ªË¡¶ ∞°¥…
3	øµæ˜∫Œ	0   °Ê ªË¡¶ ∞°¥…
4	¿⁄¿Á∫Œ	0   °Ê ªË¡¶ ∞°¥…
*/

--°€ ∫‰ ª˝º∫(DEPARTMENTVIEW)
CREATE OR REPLACE VIEW DEPARTMENTVIEW
AS
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
    , (SELECT COUNT(*)
       FROM EMPLOYEE
       WHERE DEPARTMENTID=D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
--==> View DEPARTMENTVIEW¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ¡˜¿ß∫∞ √÷º“ ±‚∫ª±ﬁ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫
SELECT MINBASICPAY
FROM POSITION
WHERE POSITIONID=1; -- ªÁø¯
--> «— ¡Ÿ ±∏º∫
SELECT MINBASICPAY FROM POSITION WHERE POSITIONID=1
;
--==> 1000000


--------------------------------------------------------------------------------

--°€ ∑Œ±◊¿Œ, ∑Œ±◊æ∆øÙ ∞˙¡§ √ﬂ∞°

-- ID øÕ PW ƒ√∑≥ µ•¿Ã≈Õ∏¶ ¥„∞Ì ¿÷¥¬ ≈◊¿Ã∫Ì¿Ã ∫∞µµ∑Œ ¡∏¿Á«œ¡ˆ æ ¥¬ ªÛ»≤¿Ã¥Ÿ.
-- ¿ÃøÕ ∞¸∑√«œø© EMPLOYEEID(ªÁø¯æ∆¿Ãµ)øÕ SSN(¡÷πŒπ¯»£) µ⁄ 7¿⁄∏Æ¿« º˝¿⁄∏¶
-- ∞¢∞¢ æ∆¿Ãµ, ∆–Ω∫øˆµÂ∑Œ ¿ÃøÎ«“ ºˆ ¿÷µµ∑œ ±∏º∫«—¥Ÿ.

--°ÿ ±‚¡∏ ≈◊¿Ã∫Ì ±∏¡∂ ∫Ø∞Ê
--®Á
-- EMPLOYEE(¡˜ø¯ µ•¿Ã≈Õ) ≈◊¿Ã∫Ì¿« SSN(¡÷πŒπ¯»£) ƒ√∑≥¿ª ∫–∏Æ«—¥Ÿ.
-- SSN ------------------------------> SSN1, SSN2
-- SSN1 °Ê ¡÷πŒπ¯»£ æ’ 6¿⁄∏Æ
-- SSN2 °Ê ¡÷πŒπ¯»£ µ⁄ 7¿⁄∏Æ °Ê æœ»£»≠ ¿˚øÎ °Ê PW »∞øÎ

--®Ë
-- EMPLOYEE(¡˜ø¯ µ•¿Ã≈Õ) ≈◊¿Ã∫Ì¿« GRADE(µÓ±ﬁ) ƒ√∑≥¿ª √ﬂ∞°«—¥Ÿ.
-- GRADE °Ê 0:∞¸∏Æ¿⁄, 1:¿œπ›ªÁø¯

--°€ ƒ√∑≥ ∫–«“ SSN °Ê SSN1, SSN2

-- ƒ√∑≥ √ﬂ∞°
ALTER TABLE EMPLOYEE
ADD(SSN1 CHAR(6), SSN2 VARCHAR2(50));  -- SSN2¥¬ CHAR2∑Œ «ÿµµ µ«¥¬µ• æœ»£»≠∏¶ «“ ∞Õ¿Ã±‚ ∂ßπÆø° ≈©∞‘ ¿‚¿Ω
--==> Table EMPLOYEE¿Ã(∞°) ∫Ø∞Êµ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEE;

-- SSN  °Ê æœ»£»≠('9710171234567', '9710171234567')

-- SSN1 °Ê SUBSTR(∫π»£»≠(¥ÎªÛ µ•¿Ã≈Õ, '9710171234567'), 1, 6) °Ê '971017'
-- SSN2 °Ê æœ»£»≠(SUBSTR(∫π»£»≠(¥ÎªÛ µ•¿Ã≈Õ, '9710171234567'), 7, 7)
--             , SUBSTR(∫π»£»≠(¥ÎªÛ µ•¿Ã≈Õ, '9710171234567'), 7, 7)) °Ê æœ»£»≠µ» '1234567'

UPDATE EMPLOYEE
SET SSN1 = SUBSTR(CRYPTPACK.DECRYPT(SSN, '9710171234567'), 1, 6)
  , SSN2 = CRYPTPACK.ENCRYPT(SUBSTR(CRYPTPACK.DECRYPT(SSN, '9710171234567'), 7, 7)
                            , SUBSTR(CRYPTPACK.DECRYPT(SSN, '9710171234567'), 7, 7));
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEE;
--==> 1	∞≠«˝º∫	?o??^????	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

-- ±‚¡∏ ¡÷πŒπ¯»£(SSN) ƒ√∑≥ ¡¶∞≈
ALTER TABLE EMPLOYEE
DROP COLUMN SSN;
--==> Table EMPLOYEE¿Ã(∞°) ∫Ø∞Êµ«æ˙Ω¿¥œ¥Ÿ.

DESC EMPLOYEE;
/*
¿Ã∏ß           ≥Œ?       ¿Ø«¸           
------------ -------- ------------ 
EMPLOYEEID   NOT NULL NUMBER       
NAME                  VARCHAR2(30) 
BIRTHDAY              DATE         
LUNAR                 NUMBER(1)    
TELEPHONE             VARCHAR2(40) 
DEPARTMENTID          NUMBER       
POSITIONID            NUMBER       
REGIONID              NUMBER       
BASICPAY              NUMBER       
EXTRAPAY              NUMBER       
SSN1                  CHAR(6)      
SSN2                  VARCHAR2(50)
*/

-- ƒ√∑≥ √ﬂ∞° °Ê GRADE °Ê ±‚∫ª∞™ 1 ¿ª ¿œπ›ªÁø¯¿∏∑Œ ±∏º∫
--                    °Ê        0 ¿ª ∞¸∏Æ¿⁄∑Œ ±∏º∫
ALTER TABLE EMPLOYEE
ADD GRADE NUMBER(1) DEFAULT 1;
--==> Table EMPLOYEE¿Ã(∞°) ∫Ø∞Êµ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEE;
--==> 1	∞≠«˝º∫	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???	1

--°€ ¡˜ø¯ µ•¿Ã≈Õ ¿‘∑¬
INSERT INTO EMPLOYEE(EMPLOYEEID, NAME, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY, SSN1, SSN2)
VALUES(EMPLOYEESEQ.NEXTVAL, '±Ê«ˆøÌ', TO_DATE('1999-02-11', 'YYYY-MM-DD'), 1, '010-6678-9867', 1, 1, 1, 1500000, 1500000, '990211', CRYPTPACK.ENCRYPT('1234567', '1234567'))
;
--> «—¡Ÿ ±∏º∫
INSERT INTO EMPLOYEE(EMPLOYEEID, NAME, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY, SSN1, SSN2) VALUES(EMPLOYEESEQ.NEXTVAL, '±Ê«ˆøÌ', TO_DATE('1999-02-11', 'YYYY-MM-DD'), 1, '010-6678-9867', 1, 1, 1, 1500000, 1500000, '990211', CRYPTPACK.ENCRYPT('1234567', '1234567'))
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEE;
/*
1	∞≠«˝º∫	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???	1
2	±Ê«ˆøÌ	1999-02-11	1	010-6678-9867	1	1	1	1500000	1500000	990211	=o???	1
*/

COMMIT;
--==> ƒøπ‘ øœ∑·.

-- ∞≠«˝º∫ ªÁø¯¿ª ∞¸∏Æ¿⁄∑Œ ¿”∏Ì
UPDATE EMPLOYEE
SET GRADE=0
WHERE EMPLOYEEID=1;
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEE;
/*
1	∞≠«˝º∫	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???	0
2	±Ê«ˆøÌ	1999-02-11	1	010-6678-9867	1	1	1	1500000	1500000	990211	=o???	1
*/

COMMIT;
--==> ƒøπ‘ øœ∑·.


--°ÿ ≈◊¿Ã∫Ì¿« ±∏¡∂∏¶ ∫Ø∞Ê«ﬂ±‚ ∂ßπÆø°
--   ¿Ã∏¶ ±‚π›¿∏∑Œ ª˝º∫«— ∫‰(VIEW)¿« ≥ªøÎ ∂««— ªı∑Œ ¿€º∫(ºˆ¡§)
--°€ ∫‰ ª˝º∫(EMPLOYEEVIEW)
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
SELECT E.EMPLOYEEID AS EMPLOYEEID
      , E.NAME AS NAME
      , E.SSN1 AS SSN
      , TO_CHAR(E.BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY
      , E.LUNAR AS LUNAR
      , DECODE(E.LUNAR, 0, 'æÁ∑¬', 1, '¿Ω∑¬') AS LUNARNAME
      , E.TELEPHONE AS TELEPHONE
      , E.DEPARTMENTID AS DEPARTMENTID
      , (SELECT DEPARTMENTNAME
         FROM DEPARTMENT
         WHERE DEPARTMENTID=E.DEPARTMENTID) AS DEPARTMENTNAME
      , E.POSITIONID AS POSITIONID
      , (SELECT POSITIONNAME
         FROM POSITION
         WHERE POSITIONID=E.POSITIONID) AS POSITIONNAME
      , E.REGIONID AS REGIONID
      , (SELECT REGIONNAME
         FROM REGION
         WHERE REGIONID=E.REGIONID) AS REGIONNAME
      , E.BASICPAY AS BASICPAY
      , E.EXTRAPAY AS EXTRAPAY
      , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY, 0) AS PAY
      , E.GRADE AS GRADE
FROM EMPLOYEE E;
--==> View EMPLOYEEVIEW¿Ã(∞°) ª˝º∫µ«æ˙Ω¿¥œ¥Ÿ.

SELECT EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, LUNARNAME, TELEPHONE, DEPARTMENTID, DEPARTMENTNAME, POSITIONID, POSITIONNAME, REGIONID, REGIONNAME, BASICPAY, EXTRAPAY, PAY, GRADE FROM EMPLOYEEVIEW
;

DESC EMPLOYEEVIEW;
/*
¿Ã∏ß             ≥Œ?       ¿Ø«¸           
-------------- -------- ------------ 
EMPLOYEEID     NOT NULL NUMBER       
NAME                    VARCHAR2(30) 
SSN                     CHAR(6)      
BIRTHDAY                VARCHAR2(10) 
LUNAR                   NUMBER(1)    
LUNARNAME               VARCHAR2(6)  
TELEPHONE               VARCHAR2(40) 
DEPARTMENTID            NUMBER       
DEPARTMENTNAME          VARCHAR2(30) 
POSITIONID              NUMBER       
POSITIONNAME            VARCHAR2(30) 
REGIONID                NUMBER       
REGIONNAME              VARCHAR2(30) 
BASICPAY                NUMBER       
EXTRAPAY                NUMBER       
PAY                     NUMBER       
GRADE                   NUMBER(1)
*/

SELECT *
FROM EMPLOYEE;
/*
1	∞≠«˝º∫	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???	0
2	±Ê«ˆøÌ	1999-02-11	1	010-6678-9867	1	1	1	1500000	1500000	990211	=o???	1
*/
SELECT *
FROM EMPLOYEEVIEW;
/*
1	∞≠«˝º∫	971017	1997-10-17	0	æÁ∑¬	010-6380-7047	1	∞≥πﬂ∫Œ	2	¥Î∏Æ	1	º≠øÔ	2500000	1500000	4000000	0
2	±Ê«ˆøÌ	990211	1999-02-11	1	¿Ω∑¬	    010-6678-9867	1	∞≥πﬂ∫Œ	1	ªÁø¯	1	º≠øÔ	1500000	1500000	3000000	1
*/


--°€ ¿œπ› ªÁø¯ ∑Œ±◊¿Œ ƒı∏ÆπÆ
--   (ID °Ê EMPLOYEEID / PW °Ê SSN2)
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID='¿‘∑¬IDπÆ¿⁄ø≠'
  AND SSN2=( SELECT SSN2
             FROM EMPLOYEE
             WHERE EMPLOYEEID='¿‘∑¬IDπÆ¿⁄ø≠');

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2=( SELECT SSN2
             FROM EMPLOYEE
             WHERE EMPLOYEEID=2);
--==> ±Ê«ˆøÌ

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2
       FROM EMPLOYEE
       WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('1234568', '12345678');
--==> ¡∂»∏ ∞·∞˙ æ¯¿Ω °Ê ∑Œ±◊¿Œ Ω«∆–
--      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2
       FROM EMPLOYEE
       WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('1234567', '1234567');
--==> ±Ê«ˆøÌ °Ê ∑Œ±◊¿Œ º∫∞¯
--      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=[¿‘∑¬ID]
  AND (SELECT SSN2
       FROM EMPLOYEE
       WHERE EMPLOYEEID=[¿‘∑¬ID]) = CRYPTPACK.ENCRYPT([¿‘∑¬PW], [¿‘∑¬PW]);
--      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=[¿‘∑¬ID]
  AND SSN2 = CRYPTPACK.ENCRYPT([¿‘∑¬PW], [¿‘∑¬PW]);
--      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2 = CRYPTPACK.ENCRYPT('1234567', '1234567');
--==> ±Ê«ˆøÌ
--==      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=[¿‘∑¬ID]
  AND SSN2 = CRYPTPACK.ENCRYPT([¿‘∑¬PW], [¿‘∑¬PW]);
--> «— ¡Ÿ ±∏º∫

--°ÿ ¿œπ›ªÁø¯ ∑Œ±◊¿Œ «— ¡Ÿ ƒı∏ÆπÆ ±∏º∫
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID=[¿‘∑¬ID] AND SSN2 = CRYPTPACK.ENCRYPT([¿‘∑¬PW], [¿‘∑¬PW])
;

--°€ ∞¸∏Æ¿⁄ ∑Œ±◊¿Œ ƒı∏ÆπÆ
--   (ID °Ê EMPLOYEEID / PW °Ê SSN2 / GRADE °Ê 0)
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2 = CRYPTPACK.ENCRYPT('1234567', '1234567')
  AND GRADE = 0;
--==> ¡∂»∏ ∞·∞˙ æ¯¿Ω °Ê ∞¸∏Æ¿⁄ ∑Œ±◊¿Œ Ω«∆–
--      °È
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=1
  AND SSN2 = CRYPTPACK.ENCRYPT('1234567', '1234567')
  AND GRADE = 0;
--==> ∞≠«˝º∫ °Ê ∞¸∏Æ¿⁄ ∑Œ±◊¿Œ º∫∞¯

--°ÿ ∞¸∏Æ¿⁄ ∑Œ±◊¿Œ «— ¡Ÿ ƒı∏ÆπÆ ±∏º∫
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID=[¿‘∑¬ID] AND SSN2 = CRYPTPACK.ENCRYPT([¿‘∑¬PW], [¿‘∑¬PW]) AND GRADE = 0
;

--°€ ¡˜ø¯ µ•¿Ã≈Õ ªË¡¶ ƒı∏ÆπÆ ±∏º∫
DELETE
FROM EMPLOYEE
WHERE EMPLOYEEID=2;
--> «— ¡Ÿ ±∏º∫
DELETE FROM EMPLOYEE WHERE EMPLOYEEID=2
;
--==> 1 «‡ ¿Ã(∞°) ªË¡¶µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.

--°€ ¡˜ø¯ µ•¿Ã≈Õ ºˆ¡§ ƒı∏ÆπÆ ±∏º∫
UPDATE EMPLOYEE
SET NAME='±Ê«ˆøÌ'
  , BIRTHDAY=TO_DATE('1999-02-11', 'YYYY-MM-DD')
  , LUNAR=1
  , TELEPHONE='010-6678-9867'
  , DEPARTMENTID=1
  , POSITIONID=1
  , REGIONID=2
  , BASICPAY=1500000
  , EXTRAPAY=1500000
  , SSN1='990211'
  , SSN2=CRYPTPACK.ENCRYPT('1234568','1234568')
  , GRADE=1
WHERE EMPLOYEEID=2;
--> «— ¡Ÿ ±∏º∫
UPDATE EMPLOYEE SET NAME='±Ê«ˆøÌ', BIRTHDAY=TO_DATE('1999-02-11', 'YYYY-MM-DD'), LUNAR=1, TELEPHONE='010-6678-9867', DEPARTMENTID=1, POSITIONID=1, REGIONID=2, BASICPAY=1500000, EXTRAPAY=1500000, SSN1='990211', SSN2=CRYPTPACK.ENCRYPT('1234568','1234568'), GRADE=1 WHERE EMPLOYEEID=2
;
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM EMPLOYEEVIEW;
/*
1	∞≠«˝º∫	971017	1997-10-17	0	æÁ∑¬	010-6380-7047	1	∞≥πﬂ∫Œ	2	¥Î∏Æ	1	º≠øÔ	    2500000	1500000	4000000	0
2	±Ê«ˆøÌ	990211	1999-02-11	1	¿Ω∑¬  	010-6678-9867	1	∞≥πﬂ∫Œ	1	ªÁø¯	2	∞Ê±‚	1500000	1500000	3000000	1
*/

SELECT *
FROM EMPLOYEE;
/*
1	∞≠«˝º∫	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000	971017	=o???	0
2	±Ê«ˆøÌ	1999-02-11	1	010-6678-9867	1	1	2	1500000	1500000	990211	????	1
*/

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.


--°€ ¿¸√º ∫Œº≠ ∏ÆΩ∫∆Æ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫(DEPARTMENTVIEW)
SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK
FROM DEPARTMENTVIEW
ORDER BY DEPARTMENTID;
--> «— ¡Ÿ ±∏º∫
SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK FROM DEPARTMENTVIEW ORDER BY DEPARTMENTID
;
/*
1	∞≥πﬂ∫Œ	2
2	±‚»π∫Œ	0
3	øµæ˜∫Œ	0
4	¿⁄¿Á∫Œ	0
*/

--°€ ∫Œº≠ µ•¿Ã≈Õ ¿‘∑¬ ƒı∏ÆπÆ ±∏º∫(DEPARTMENT)
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL, '√—π´∫Œ')
;
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ ∫Œº≠ µ•¿Ã≈Õ ªË¡¶ ƒı∏ÆπÆ ±∏º∫(DEPARTMENT)
DELETE
FROM DEPARTMENT
WHERE DEPARTMENTID=3;
--> «— ¡Ÿ ±∏º∫
DELETE FROM DEPARTMENT WHERE DEPARTMENTID=3
;

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.

--°€ ∫Œº≠ µ•¿Ã≈Õ ºˆ¡§ ƒı∏ÆπÆ ±∏º∫(DEPARTMENT)
UPDATE DEPARTMENT
SET DEPARTMENTNAME='¿⁄ø¯∫Œ'
WHERE DEPARTMENTID=2;
--> «— ¡Ÿ ±∏º∫
UPDATE DEPARTMENT SET DEPARTMENTNAME='¿⁄ø¯∫Œ' WHERE DEPARTMENTID=2
;
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.


--°€ ¿¸√º ¡ˆø™ ∏ÆΩ∫∆Æ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫(REGIONVIEW)
SELECT REGIONID, REGIONNAME, DELCHECK
FROM REGIONVIEW
ORDER BY REGIONID;
--> «— ¡Ÿ ±∏º∫
SELECT REGIONID, REGIONNAME, DELCHECK FROM REGIONVIEW ORDER BY REGIONID
;
/*
1	º≠øÔ  	1
2	∞Ê±‚	1
3	¿Œ√µ	0
4	¥Î¿¸	0
5	±§¡÷	0
6	¥Î±∏	0
*/

--°€ ¡ˆø™ µ•¿Ã≈Õ µÓ∑œ ƒı∏ÆπÆ ±∏º∫(REGION)
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL, '∞≠ø¯')
;
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ.

SELECT *
FROM REGIONVIEW;
/*
1	º≠øÔ	    1
2	∞Ê±‚	1
3	¿Œ√µ	0
4	¥Î¿¸	0
5	±§¡÷	0
6	¥Î±∏	0
7	∞≠ø¯	0
*/

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ ¡ˆø™ µ•¿Ã≈Õ ªË¡¶ ƒı∏ÆπÆ ±∏º∫(REGION)
DELETE
FROM REGION
WHERE REGIONID=3;
--> «— ¡Ÿ ±∏º∫
DELETE FROM REGION WHERE REGIONID=3
;
--==> 1 «‡ ¿Ã(∞°) ªË¡¶µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.

--°€ ¡ˆø™ µ•¿Ã≈Õ ºˆ¡§ ƒı∏ÆπÆ ±∏º∫(REGION)
UPDATE REGION
SET REGIONNAME='¡¶¡÷'
WHERE REGIONID=4;
--> «— ¡Ÿ ±∏º∫
UPDATE REGION SET REGIONNAME='¡¶¡÷' WHERE REGIONID=4
;
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ ¿¸√º ¡˜¿ß ∏ÆΩ∫∆Æ ¡∂»∏ ƒı∏ÆπÆ ±∏º∫(POSITIONVIEW)
SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK
FROM POSITIONVIEW
ORDER BY POSITIONID;
--> «— ¡Ÿ ±∏º∫
SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK FROM POSITIONVIEW ORDER BY POSITIONID
;
/*
1	ªÁø¯	1000000	1
2	¥Î∏Æ	2000000	1
3	∞˙¿Â	3000000	0
4	∫Œ¿Â  	4000000	0
*/

--°€ ¡˜¿ß µ•¿Ã≈Õ ¿‘∑¬ ƒı∏ÆπÆ ±∏º∫(POSITION)
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, 'ªÛπ´', 5000000)
;
--==> 1 «‡ ¿Ã(∞°) ª¿‘µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ƒøπ‘
COMMIT;
--==> ƒøπ‘ øœ∑·.

--°€ ¡˜¿ß µ•¿Ã≈Õ ªË¡¶ ƒı∏ÆπÆ ±∏º∫(POSITION)
DELETE
FROM POSITION
WHERE POSITIONID=5;
--> «— ¡Ÿ ±∏º∫
DELETE FROM POSITION WHERE POSITIONID=5
;
--==> 1 «‡ ¿Ã(∞°) ªË¡¶µ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.


--°€ ¡˜¿ß µ•¿Ã≈Õ ºˆ¡§ ƒı∏ÆπÆ ±∏º∫(POSITION)
UPDATE POSITION
SET POSITIONNAME='¡÷¿”', MINBASICPAY=2000000
WHERE POSITIONID=2;
--> «— ¡Ÿ ±∏º∫
UPDATE POSITION SET POSITIONNAME='¡÷¿”', MINBASICPAY=2000000 WHERE POSITIONID=2
;
--==> 1 «‡ ¿Ã(∞°) æ˜µ•¿Ã∆Æµ«æ˙Ω¿¥œ¥Ÿ.

--°€ ∑—πÈ
ROLLBACK;
--==> ∑—πÈ øœ∑·.

--°€ ¡˜ø¯ ∞Àªˆ ƒı∏ÆπÆ ±∏º∫(æ∆¿Ãµ∏¶ »∞øÎ«œø© ¡˜ø¯ µ•¿Ã≈Õ ∞Àªˆ)
SELECT EMPLOYEEID, NAME, SSN1, TO_CHAR(BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY
FROM EMPLOYEE
WHERE EMPLOYEEID=1;
--> «— ¡Ÿ ±∏º∫
SELECT EMPLOYEEID, NAME, SSN1, TO_CHAR(BIRTHDAY, 'YYYY-MM-DD') AS BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY FROM EMPLOYEE WHERE EMPLOYEEID=1
;
--==>1	∞≠«˝º∫	971017	1997-10-17	0	010-6380-7047	1	2	1	2500000	1500000

DESC EMPLOYEEVIEW;
DESC EMPLOYEE;

SELECT REGIONID, REGIONNAME
FROM REGION;

SELECT REGIONID, REGIONNAME, DELCHECK
FROM REGIONVIEW
WHERE REGIONID=8;
--> «— ¡Ÿ ±∏º∫
SELECT REGIONID, REGIONNAME, DELCHECK FROM REGIONVIEW WHERE REGIONID=8
;

SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK
FROM DEPARTMENTVIEW
WHERE DEPARTMENTID=6;
--> «— ¡Ÿ ±∏º∫
SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK FROM DEPARTMENTVIEW WHERE DEPARTMENTID=6
;

SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK
FROM POSITIONVIEW
WHERE POSITIONID=5;
--> «— ¡Ÿ ±∏º∫
SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK FROM POSITIONVIEW WHERE POSITIONID=5
;

SELECT *
FROM POSITIONVIEW;

