create table REQUEST_AL( --연차신청 table
AL_DATE date, --등록일
AL_M_NAME varchar2(20), --등록자 이름
AL_M_PART_C varchar2(20), --부서
AL_M_CODE varchar2(20), --사번
AL_SORT varchar2(20),  --연차종류
AL_STARTDATE date,  --시작일
AL_ENDDATE date,   --종료일
AL_REASON varchar(500) --휴가사유
);

select  substr(AL_STARTDATE,1,10) from REQUEST_AL;

DROP TABLE REQUEST_AL;

insert into REQUEST_AL(AL_DATE, AL_M_NAME, AL_M_PART_C, AL_M_CODE, AL_SORT, AL_STARTDATE, AL_ENDDATE, AL_REASON
)values(
sysdate,'안혜정','총무팀','part','연차','2020-07-18', '2020-07-21 00:00:00','리프레쉬휴가'
);

select * from request_al;

create table LIST_AL(
AL_M_CODE varchar2(20), --사번
AL_M_NAME varchar2(20), --등록자 이름
AL_M_PART_C varchar2(20), --부서 소속
AL_M_JOIN_DATE date, --입사날짜
AL_YEARS number,-- 근속년수
AL_TOTALDAY number, --보유연차 (일수)
AL_TOTALHOUR number, --보유연차 (시간)
AL_USED number, -- 사용한 연차
AL_UNUSED number -- 남은연차
);

select floor(months_between(sysdate,M_JOIN_DATE)/12) from member; --근속 년수

select * from list_al;

DELETE FROM list_al
WHERE
AL_M_CODE = 'user';

insert into list_al
(AL_M_CODE, AL_M_NAME, AL_M_PART_C, AL_M_JOIN_DATE )
values('user', '수진1', '총무팀', '2018-04-01' );




--근속년수 update--
update list_al
set AL_YEARS = (select floor(months_between(sysdate,AL_M_JOIN_DATE)/12) from list_al where AL_M_CODE = 'user' ) where AL_M_CODE = 'user';

--휴가 갯수--decode 사용해서
select 15+((AL_YEARS - 1) / 2 ) from list_al where AL_YEARS > 1; --1년차이상부터
select 11 from list_al where AL_YEARS = 0; --1년차 미만인 사람

--휴가 갯수 연차 1년차 이상 update--
update list_al
set AL_TOTALDAY = (select 15 + ((AL_YEARS - 1) / 2 ) from list_al where AL_YEARS >= 1 and AL_M_CODE = 'user' ) where AL_M_CODE = 'user';

--휴가 갯수 연차 1년차 미만 update--
update list_al
set AL_TOTALDAY = 11 where AL_YEARS = 0;


--휴가 갯수 시간으로 환산--
update list_al
set AL_TOTALHOUR = AL_TOTALDAY*8;


1. al_request테이블에서 : 휴가신청한 사람의 정보 읽어옴
2. getAL_SORT() :
   ilsu = [8,4,0,8,4]
   ilsu[getAL_SORT()]  => 8시간
   
3.   update list_al
     set al_used =  40, 
     al_unused = al_totalhour - (40)
     where al_m_code = 'sujin';
     
    update from LIST_AL
     set al_used =  (신청ㅁㅏ지막날 - 신청 첫날 + 1 ) * 8시간, 
     al_unused = al_totalhour - ((신청ㅁㅏ지막날 - 신청 첫날 + 1 ) * 8시간)
     where al_m_code = 'sujin';
     