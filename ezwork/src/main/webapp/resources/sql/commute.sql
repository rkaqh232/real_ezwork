CREATE TABLE COMMUTE(
CM_CODE VARCHAR2(20), 					--근태코드 // 그날 날짜 20200713
CM_TEAMNAME VARCHAR2(20), 					--팀명
CM_MCODE VARCHAR2(20),						--사원번호 
CM_NAME VARCHAR2(15),								--성명
CM_ONTIME VARCHAR2(10),										--근무시작시간 17:00 ->1700
CM_OFFTIME VARCHAR2(10),									--근무종료시간 18:00 -> 1800
CM_WORKHOUR VARCHAR2(10),									--하루근무시간 
CM_OVERTIME VARCHAR2(10),									--연장근무시간
CM_CONFIRM VARCHAR2(10) CHECK(CM_CONFIRM IN('Y','N')),	--최종근무확정
CM_DATE DATE);										--등록일자

ALTER TABLE COMMUTE
MODIFY (CM_WORKHOUR VARCHAR2(15));



DROP TABLE COMMUTE;

DELETE FROM COMMUTE
WHERE
CM_CODE = 20200716;

select * from commute;

insert into commute(CM_CODE,CM_TEAMNAME,CM_MCODE,CM_NAME,CM_ONTIME,CM_OFFTIME, CM_DATE )
values (20200717,'인사팀','202','이재희','08:02','18:41',SYSDATE+2 );




/*하루 근무시간 계산*/
UPDATE commute
SET CM_WORKHOUR = (SELECT ((REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-REGEXP_REPLACE(CM_ONTIME, '[[:punct:]]')))
FROM COMMUTE WHERE CM_CODE = to_char(sysdate+2,'yyyymmdd')) WHERE CM_CODE = to_char(sysdate+2,'yyyymmdd');
/*근무시간 계산*/

/*월별근무시간 계산 사람별해야됨..*/ 
SELECT SUM(CM_WORKHOUR) FROM COMMUTE WHERE SUBSTR(CM_CODE,1,6) = to_char(sysdate,'yyyymm');
/*월별근무시간 계산*/

/*연장근무시간 계산.*/
SELECT CM_OFFTIME, CM_ONTIME, (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-'1800')
FROM COMMUTE WHERE (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-'1800') > 0;
/*연장근무시간 계산.*/

/*연장근무시간 계산 UPDATE*/
UPDATE commute
SET CM_OVERTIME = (SELECT (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-'1800') FROM COMMUTE
WHERE (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-'1800') > 0 AND CM_CODE = to_char(sysdate,'yyyymmdd'))
WHERE CM_CODE = to_char(sysdate,'yyyymmdd');
/*연장근무시간 계산 UPDATE*/





SELECT (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]') - REGEXP_REPLACE(CM_ONTIME, '[[:punct:]]') FROM COMMUTE;

INSERT INTO commute(CM_WORKHOUR)
values(select (TO_DATE(CM_OFFTIME,'hh24:mi')-TO_DATE(CM_ONTIME,'hh24:mi'))*(24*60)
from commute);




SELECT CM_OFFTIME, CM_ONTIME, (REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-REGEXP_REPLACE(CM_ONTIME, '[[:punct:]]'))
FROM COMMUTE;

select CM_OFFTIME, CM_ONTIME, (TO_DATE(CM_OFFTIME,'hh24:mi')-TO_DATE(CM_ONTIME,'hh24:mi')) * (24*60)
from commute 

select (TO_DATE(CM_OFFTIME,'hh24:mi')
from commute 



where CM_CODE=to_char(sysdate,'yyyymmdd');

SELECT SUM(to_date(CM_OFFTIME) - to_date(CM_ONTIME)) FROM COMMUTE;
WHERE SUBSTR(CM_CODE,1,6) = TO_CHAR(SYSDATE, 'yyyymm') ;



--test용--
CREATE TABLE datetest(
yyyymmdd varchar2(20),	
hhmm varchar2(20),	
yyyy_mm_dd varchar2(20)
);

drop table datetest;

insert into datetest(yyyymmdd)
values (to_char(sysdate,'hh24:mi'));

insert into datetest(yyyymmdd)
values (to_char(sysdate,'yyyymmdd'));

select TO_CHAR(SYSDATE, 'HH24:MI') from datetest; --hh:mi

select TO_CHAR(SYSDATE, 'yyyymmdd') from datetest; 

select * from datetest;

select * from commute
where 
CM_CODE=to_char(sysdate,'yyyymmdd');
