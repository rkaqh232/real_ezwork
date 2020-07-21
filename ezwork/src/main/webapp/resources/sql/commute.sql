CREATE TABLE COMMUTE(
CM_CODE VARCHAR2(20), 					--근태코드 // 그날 날짜 20200713
CM_TEAMNAME VARCHAR2(20), 					--팀명
CM_MCODE VARCHAR2(20),						--사원번호 
CM_NAME VARCHAR2(15),								--성명
CM_ONTIME VARCHAR2(10),										--근무시작시간 17:00 ->1700
CM_OFFTIME VARCHAR2(10),									--근무종료시간 18:00 -> 1800
CM_WORKHOUR VARCHAR2(10),									--하루근무시간 
CM_ACCHOUR VARCHAR2(10),									--누적근무시간
CM_DATE DATE,										--등록날짜시간
CM_OFFDATE DATE										--퇴근날짜시간
);										

ALTER TABLE COMMUTE
MODIFY (CM_WORKHOUR VARCHAR2(15));

DROP TABLE COMMUTE;

DELETE FROM COMMUTE
WHERE
CM_CODE = 20200720;

select * from commute;

insert into commute(CM_CODE,CM_TEAMNAME,CM_MCODE,CM_NAME,CM_ONTIME,CM_OFFTIME, CM_DATE )
values (20200720,'인사팀','202','이재희','08:02','18:41',SYSDATE);


/*하루 근무시간 계산*/
UPDATE commute
SET CM_WORKHOUR = (SELECT ((REGEXP_REPLACE(CM_OFFTIME, '[[:punct:]]')-REGEXP_REPLACE(CM_ONTIME, '[[:punct:]]')))
FROM COMMUTE WHERE CM_CODE = to_char(sysdate,'yyyymmdd')) WHERE CM_CODE = to_char(sysdate,'yyyymmdd');
/*근무시간 계산*/

/*월별누적근무시간 계산..*/ 
update commute
set CM_ACCHOUR = (
SELECT SUM(CM_WORKHOUR) FROM COMMUTE WHERE SUBSTR(CM_CODE,1,6) = to_char(sysdate,'yyyymm') 
AND CM_MCODE = 'jaehee');
/*월별누적근무시간 계산*/

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





