CREATE TABLE COMMUTE(
CM_CODE VARCHAR2(20), 					--근태코드 // 그날 날짜 20200713
CM_TEAMNAME VARCHAR2(20), --팀명
CM_MCODE VARCHAR2(20),	--사원번호 
CM_NAME VARCHAR2(15),								--성명
CM_ONTIME VARCHAR2(10),										--근무시작시간
CM_OFFTIME VARCHAR2(10),									--근무종료시간
CM_OVERTIME VARCHAR2(10),									--연장근무시간
CM_GOOUTTIME VARCHAR2(10),									--중간외출시작
CM_RETURNTIME VARCHAR2(10),									--중간외출복귀
CM_GOOUTREASON VARCHAR2(50),						--외출사유
CM_CONFIRM VARCHAR2(10) CHECK(CM_CONFIRM IN('Y','N')),	--최종근무확정
CM_DATE DATE);										--등록일자

DROP TABLE COMMUTE;

select * from commute;



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
