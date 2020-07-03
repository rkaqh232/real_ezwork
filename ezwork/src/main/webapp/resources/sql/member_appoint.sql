-- 혜쩡
-- 발령 정보 테이블
create table MEM_APPOINT(

AP_PART     VARCHAR2(20) PRIMARY KEY,	 -- 발령구분
AP_DATE     DATE, 						 -- 발령일자
AP-LEVEL    VARCHAR2(10),				 -- 발령직급
AP_CON 		VARCHAR2(50),				 -- 발령내용
AP_ETC 		VARCHAR2(50)				 -- 비고

);