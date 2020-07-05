DROP TABLE member;
-- 혜쩡
-- 학력정보 테이블
create table MEM_SCHOOL(

SC_NAME  		VARCARH2(50) PRIMARY KEY, -- 학교명
M_CODE   		VARCARH2(20),			  -- 사원번호
SC_MAJOR 		VARCARH2(20), 			  -- 전공
SC_DEGREE 		VARCARH2(20), 			  -- 학위
SC_ADDRESS 		VARCARH2(50), 			  -- 소재지
SC_ENT_DAY 		DATE, 					  -- 입학일자
SC__GRAD_DAY 	DATE  					  -- 졸업일자
);


