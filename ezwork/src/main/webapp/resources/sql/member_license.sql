-- 혜쩡
-- 자격증 정보 테이블
create table MEM_LISENCE(

LI_NAME  	VARCHAR2(50) PRIMARY KEY, -- 자격증명
LI_ORGAN 	VARCHAR2(50),			  -- 발급기관
LI_DATE  	DATE 					  -- 취득날짜

);