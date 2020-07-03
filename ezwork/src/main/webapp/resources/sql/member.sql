
DROP TABLE member;
-- 혜쩡
-- 사원 테이블
create table member(
	M_CODE    				VARCHAR2(20) PRIMARY KEY, -- 사원번호
	M_PASS       		    VARCHAR2(20),		   -- 비밀번호 not null
	M_WORK_C  				NUMBER,                -- 계약코드(아르바이트100,계약직200,정규직300)
	M_PART_C  				VARCHAR2(10),          -- 부서코드
	M_LEVEL  				NUMBER,                -- 직급코드(1,2,3,4,5레벨로 5단계가 CEO)
	M_NAME    				VARCHAR2(15), 		   -- 사원명, 성명 not null
	M_NAME_EN 				VARCHAR2(15),          -- 영문성명
	M_PRI_NUMBER  		    NUMBER,                -- 주민번호
	M_GENDER 				varchar2(8) CHECK (M_GENDER IN ('남','여') ),  -- 성별
	M_BIRTH  				date,                  -- 생년월일
	M_ARMY   				varchar2(8) CHECK (M_ARMY IN('Y','N')),     -- 군필여부  boolean형 사용 불가능
	M_MARRIAGE 				varchar2(8) CHECK (M_MARRIAGE IN('Y','N')), -- 결혼여부  boolean형 사용 불가능
	M_TEL       			VARCHAR2(20),	       -- 자택전화
	M_MOBILE_TEL   		    VARCHAR2(20),	       -- 핸드폰
	M_EMAIL        		    VARCHAR2(100),	       -- 이메일
	M_ADDRESS       		VARCHAR2(100),         -- 자택주소
	M_JOIN_DATE    		    date,                  -- 입사일
	M_RESIGN_DATE  		    date                   -- 퇴사일	
);

 	
 	
 
