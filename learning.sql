CREATE TABLE EMPLOYEES( 
 employee_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 first_name VARCHAR2(20),
 last_name VARCHAR2(20),
 salary NUMBER (8,2),
 Date_of_hire DATE
 BONUS NUMBER(6,2)
);

INSERT INTO EMPLOYEES (first_name,last_name,salary,date_of_hire,BONUS )
VALUES('yabes','iyukuri',550000.12,TO_DATE('2022-05-01', 'YYYY-MM-DD'),3000.12);  

INSERT INTO EMPLOYEES (first_name,last_name,salary,date_of_hire)
VALUES('audace','karenzi',330000.12,TO_DATE('2023-03-01', 'YYYY-MM-DD'),2456.76); 


INSERT INTO EMPLOYEES (first_name,last_name,salary,date_of_hire)
VALUES('mucyo','moses',220000.12,TO_DATE('2024-02-01', 'YYYY-MM-DD'),3456.57); 

SELECT * FROM EMPLOYEES;


CREATE TABLE COURSES(
 COURSE_CODE VARCHAR2(10),
 COURSE_TITLE VARCHAR2(10),
 CREDIT_HOURS TIMESTAMP,
 DEPARTMENT VARCHAR2(10)
 );
 
 DROP TABLE COURSES;
 
 CREATE TABLE COURSES(
 COURSE_CODE VARCHAR2(10) PRIMARY KEY,
 COURSE_TITLE VARCHAR2(10),
 CREDIT_HOURS TIMESTAMP,
 DEPARTMENT VARCHAR2(10)
 );
 
 INSERT  INTO COURSES VALUES ('CPROG11','C_PROGRAM',TO_TIMESTAMP('04:00:00', 'HH24:MI:SS'), 'IT');
 
 INSERT  INTO COURSES VALUES ('BBLD','BIBLE',TO_TIMESTAMP('03:00:00', 'HH24:MI:SS'), 'GEN_COURSE');

 INSERT  INTO COURSES VALUES ('SQL11','PL/SQL',TO_TIMESTAMP('04:00:00', 'HH24:MI:SS'), 'IT');
 
 SELECT * FROM COURSES;
 
 
 
 
 CREATE TABLE LIBRARY_BOOKS(
 BOOK_ID  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 BOOK_TITLE VARCHAR2(100),
 AUTHOR VARCHAR2(100),
 PUBLISHED_YEAR DATE,
 AVAILABLE CHAR(3)
 );
 
INSERT INTO LIBRARY_BOOKS (BOOK_TITLE,AUTHOR,PUBLISHED_YEAR,AVAILABLE)
VALUES('INTRO_TO_PL/SQL','iyukuri',TO_DATE('2022-05-01', 'YYYY-MM-DD'),'YES' );  

INSERT INTO LIBRARY_BOOKS (BOOK_TITLE,AUTHOR,PUBLISHED_YEAR,AVAILABLE)
VALUES('INTRO_TO_C_PROGRAMMING','YABES',TO_DATE('2022-03-01', 'YYYY-MM-DD'),'NO' ); 

select * from LIBRARY_BOOKS;



CREATE TABLE LOGINS(
 USER_ID  NUMBER  PRIMARY KEY,
 USERNAME VARCHAR2(100) UNIQUE,
 PASSWORD_HARSH VARCHAR2(100),
 LAST_LOGIN DATE
 );
 
INSERT INTO LOGINS VALUES(27327,'LEBRON','SDFGHJFGHJ456787889',SYSTIMESTAMP);  

INSERT INTO LOGINS VALUES(27472,'TATUM','SDFGHJKFGHJK5678',TO_DATE('2022-03-01 ' , 'YYYY-MM-DD' ));

select * from LOGINS ;

CREATE TABLE LEARNERS(
 LEARNER_ID  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 LEARNER_NAME  VARCHAR2(100),
 DEPARTMENT VARCHAR2(100)
 );
 
INSERT INTO LEARNERS (LEARNER_NAME,DEPARTMENT)
VALUES('MORANT','IT');  

INSERT INTO LEARNERS (LEARNER_NAME,DEPARTMENT)
VALUES('ZION','MEDECINE');


CREATE TABLE GRADES(
 GRADE_ID  NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 LEARNER_ID NUMBER,
 COURSE_CODE VARCHAR2(100),
 GRADE VARCHAR2(2),
 GRADE_DATE DATE,
 FOREIGN KEY (LEARNER_ID ) REFERENCES LEARNERS(LEARNER_ID )
 );
 
INSERT INTO GRADES (LEARNER_ID ,COURSE_CODE,GRADE,GRADE_DATE)
VALUES(1,'CS36','A+',TO_DATE('2025-01-10' , 'YYYY-MM-DD'));  

INSERT INTO GRADES (LEARNER_ID,COURSE_CODE,GRADE,GRADE_DATE)
VALUES(2,'CS37','A-',TO_DATE('2025-04-10' , 'YYYY-MM-DD'));

SELECT * FROM GRADES;


SELECT * FROM LEARNERS;

COMMIT
