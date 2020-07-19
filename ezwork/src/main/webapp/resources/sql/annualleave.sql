create table request_al( --연차신청 table
al_date date, --등록일
al_m_name varchar2(20), --등록자 이름
al_m_part_c varchar2(20), --부서
al_m_code varchar2(20), --사번
al_sort varchar2(20),  --연차종류
al_startdate date,  --시작일
al_enddate date,   --종료일
al_reason varchar(500) --휴가사유
);

select * from request_al;

create table list_al(
al_m_code varchar2(20), --사번
al_m_name varchar2(20), --등록자 이름
al_m_part_c varchar2(20), --부서 소속
al_m_join_date date, --입사날짜
al_years number,-- 근속년수
al_totalday number, --보유연차 (일수)
al_totalhour number, --보유연차 (시간)
al_used number, -- 사용한 연차
al_unused number -- 남은연차
);

select floor(months_between(sysdate,M_JOIN_DATE)/12) from member; --근속 년수

select * from list_al;