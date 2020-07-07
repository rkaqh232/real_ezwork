drop table eventboard;

select * from eventboard;

create table eventboard(
EV_NO NUMBER(11),  			--글번호
EV_SORT VARCHAR2(10),		--말머리
EV_NAME VARCHAR2(10),		--작성자
EV_PASS VARCHAR2(15),		--비밀번호
EV_TITLE VARCHAR2(50),		--제목
EV_CONTENT VARCHAR2(3000),	--내용
EV_DATE DATE,				--작성날짜
EV_FILE		VARCHAR2(50),	--첨부될 파일 명(가공)
EV_ORIGINAL	VARCHAR2(50),	--첨부될 파일 명
EV_RE_REF	NUMBER,			--답변 글 작성시 참조되는 글의 번호
EV_RE_LEV	NUMBER,			--답변 글의 깊이
EV_RE_SEQ	NUMBER,			--답변 글의 순서
EV_READCOUNT NUMBER,		--글의 조회수
PRIMARY KEY(EV_NO)
);