
DROP TABLE member;

--혜정
--사원 정보 테이블(학력,어학,자격정보)


create table member(
   M_CODE                VARCHAR2(20) PRIMARY KEY,                    -- 사원번호 not null (시퀀스사용 emp + 202001 자동부여)
   M_PASS                VARCHAR2(20),                                -- 비밀번호 not null
   M_WORK_C              NUMBER,                                      -- 계약코드 (100 계약직, 200 정규직)
   M_PART_C              VARCHAR2(10),                                -- 부서코드
   M_LEVEL               NUMBER,                                      -- 직급코드(1,2,3,4,5, 1은 계약직~ 5: CEO)
   M_NAME                VARCHAR2(15),                                -- 성명 not null
   M_NAME_EN             VARCHAR2(15),                                -- 영문성명
   M_PRI_NUMBER          NUMBER,                                      -- 주민번호
   M_GENDER              varchar2(8) CHECK (M_GENDER IN ('남','여')),  -- 성별
   M_BIRTH               date,                                        -- 생년월일 -kt_datepicker_3
   M_ARMY                varchar2(8) CHECK (M_ARMY IN('Y','N')),      -- 군필여부  
   M_MARRIAGE            varchar2(8) CHECK (M_MARRIAGE IN('Y','N')),  -- 결혼유무  
   M_TEL                 VARCHAR2(20),                                -- 자택전화
   M_MOBILE_TEL          VARCHAR2(20),                                -- 핸드폰
   M_EMAIL               VARCHAR2(100),                               -- 이메일
   M_ADDRESS             VARCHAR2(100),                               -- 자택주소 -우편번호 sample6_postcode  / 상세주소 
   M_JOIN_DATE           date,                                        -- 입사날짜
   SC_NAME               VARCHAR2(50),                                -- 학교명   (학력정보)
   SC_MAJOR              VARCHAR2(20),                                -- 전공
   SC_DEGREE             VARCHAR2(20),                                -- 학위
   SC_ADDRESS            VARCHAR2(50),                                -- 소재지
   SC__GRAD_DAY          date,                                        -- 졸업일자
   LG_NAME               VARCHAR2(20),                                -- 외국어명  (어학정보)
   LG_TEST               VARCHAR2(20),                                -- 시험명
   LG_GRADE              VARCHAR2(20),                                -- 시험점수
   LG_DATE               DATE,                                        -- 발급일자
   LG_ORGAN              VARCHAR2(20),                                -- 발급처 
   LI_NAME               VARCHAR2(50),                                -- 자격증명  (자격정보)
   LI_ORGAN              VARCHAR2(50),                                -- 발급기관
   LI_DATE               DATE                                         -- 발급일자, 총 30개
);
   

insert into member
		(M_CODE,
		M_PASS, M_NAME, M_PART_C,
		M_EMAIL,M_LEVEL)
		values
		(
		
		);
		


insert into member(M_CODE,M_PASS) -- 임시 관리자 계정
values('admin','1');

insert into member(M_CODE,M_PASS) -- 사원코드 부여 테스트
values('EMP'||emp_seq.nextval,'1234');

select *
from member;

    
 