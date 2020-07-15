
DROP TABLE member;

--혜정
--사원 정보 테이블(학력,어학,자격정보)


create table member(
   M_CODE                VARCHAR2(20) PRIMARY KEY,                    -- 사원번호 not null (시퀀스사용 emp + 202001 자동부여)
   M_PASS                VARCHAR2(20),                                -- 비밀번호 not null
   M_FILE               VARCHAR2(50),                           -- 증명사진 - 첨부될 파일 명(가공)
   M_ORIGINAL             VARCHAR2(50),                         -- 증명사진 - 첨부될 파일 명
   M_PART_C              VARCHAR2(10),                                -- 부서코드
   M_LEVEL               NUMBER,                                      -- 직급코드(1,2,3,4,5, 1은 계약직~ 5: CEO)
   M_NAME                VARCHAR2(15),                                -- 성명 not null
   M_GENDER              varchar2(8) CHECK (M_GENDER IN ('남','여')),  -- 성별
   M_BIRTH               VARCHAR2(20),                                -- 생년월일 -kt_datepicker_3
   M_ARMY                varchar2(8) CHECK (M_ARMY IN('Y','N','NA')), -- 군필여부  
   M_MARRIAGE            varchar2(8) CHECK (M_MARRIAGE IN('Y','N')),  -- 결혼유무  
   M_MOBILE_TEL          VARCHAR2(20),                                -- 핸드폰
   M_EMAIL               VARCHAR2(100),                               -- 이메일
   M_ADDRESS             VARCHAR2(100),                               -- 자택주소 
   M_JOIN_DATE           DATE,                                       -- 입사날짜-SYSDATE
   SC_NAME               VARCHAR2(50),                                -- 학교명   (학력정보)
   SC_MAJOR              VARCHAR2(20),                                -- 전공
   SC_DEGREE             VARCHAR2(20),                                -- 학위
   SC_ADDRESS            VARCHAR2(50),                                -- 소재지
   SC_GRAD_DAY           VARCHAR2(20),                                -- 졸업일자 kt_datepicker_3
   LG_NAME               VARCHAR2(20),                                -- 외국어명  (어학정보)
   LG_TEST               VARCHAR2(20),                                -- 시험명
   LG_GRADE              VARCHAR2(20),                                -- 시험점수
   LG_ORGAN              VARCHAR2(20),                                -- 발급처 
   LG_DATE               VARCHAR2(20),                                -- 발급일자 kt_datepicker_3
   LI_NAME               VARCHAR2(50),                                -- 자격증명  (자격정보)
   LI_ORGAN              VARCHAR2(50),                                -- 발급기관
   LI_DATE               VARCHAR2(20)                                 -- 발급일자 , 총 28개의 컬럼-kt_datepicker_3

  );
   


insert into member(M_CODE, M_PASS, M_NAME, M_PART_C, M_LEVEL) -- 임시생성재희
values('jaehee','1','이재희', '총무팀','3');

insert into member(M_CODE,M_PASS) -- 임시 관리자 계정
values('admin','1');

insert into member(M_CODE,M_PASS) -- 임시 관리자 계정
values('park','1');

insert into member(M_CODE,M_PASS) -- 사원코드 부여 테스트
values('EMP'||emp_seq.nextval,'1234');


select *
from member;

    
 