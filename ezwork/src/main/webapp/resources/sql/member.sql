
DROP TABLE member;
-- í˜œì©¡
-- ì‚¬ì› í…Œì´ë¸”
create table member(
	M_CODE    				VARCHAR2(20) PRIMARY KEY, -- ì‚¬ì›ë²ˆí˜¸
	M_PASS       		    VARCHAR2(20),		   -- ë¹„ë°€ë²ˆí˜¸ not null
	M_WORK_C  				NUMBER,                -- ê³„ì•½ì½”ë“œ(ì•„ë¥´ë°”ì´íŠ¸100,ê³„ì•½ì§200,ì •ê·œì§300)
	M_PART_C  				VARCHAR2(10),          -- ë¶€ì„œì½”ë“œ
	M_LEVEL  				NUMBER,                -- ì§ê¸‰ì½”ë“œ(1,2,3,4,5ë ˆë²¨ë¡œ 5ë‹¨ê³„ê°€ CEO)
	M_NAME    				VARCHAR2(15), 		   -- ì‚¬ì›ëª…, ì„±ëª… not null
	M_NAME_EN 				VARCHAR2(15),          -- ì˜ë¬¸ì„±ëª…
	M_PRI_NUMBER  		    NUMBER,                -- ì£¼ë¯¼ë²ˆí˜¸
	M_GENDER 				varchar2(8) CHECK (M_GENDER IN ('ë‚¨','ì—¬') ),  -- ì„±ë³„
	M_BIRTH  				date,                  -- ìƒë…„ì›”ì¼
	M_ARMY   				varchar2(8) CHECK (M_ARMY IN('Y','N')),     -- êµ°í•„ì—¬ë¶€  booleaní˜• ì‚¬ìš© ë¶ˆê°€ëŠ¥
	M_MARRIAGE 				varchar2(8) CHECK (M_MARRIAGE IN('Y','N')), -- ê²°í˜¼ì—¬ë¶€  booleaní˜• ì‚¬ìš© ë¶ˆê°€ëŠ¥
	M_TEL       			VARCHAR2(20),	       -- ìžíƒì „í™”
	M_MOBILE_TEL   		    VARCHAR2(20),	       -- í•¸ë“œí°
	M_EMAIL        		    VARCHAR2(100),	       -- ì´ë©”ì¼
	M_ADDRESS       		VARCHAR2(100),         -- ìžíƒì£¼ì†Œ
	M_JOIN_DATE    		    date,                  -- ìž…ì‚¬ì¼
	M_RESIGN_DATE  		    date                   -- í‡´ì‚¬ì¼	
);

insert into member
values ('Ca', 'park', 300, 'Ca', 2, '¹Ú¹ÎÇõ', 'PARKMINHYEOK', 9106231, '³²', sysdate, 'Y', 'N', 'qq', 'qq', 'park@park.com', '¼­¿ï½Ã', sysdate, sysdate);
		
select *
from member;

 	
 
