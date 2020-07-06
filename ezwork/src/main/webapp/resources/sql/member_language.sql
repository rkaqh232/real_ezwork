-- 혜정
-- 어학테이블
create table MEM_LANGUAGE(

LG_NAME 	VARCHAR2(20) PRIMARY KEY, -- 외국어명
LG_TEST 	VARCHAR2(20),			  -- 시험명
LG_GRADE 	VARCHAR2(20), 			  -- 시험점수
LG_DATE 	DATE, 					  -- 발급일자
LG_ORGAN 	VARCHAR2(20) 			  -- 발급처

);