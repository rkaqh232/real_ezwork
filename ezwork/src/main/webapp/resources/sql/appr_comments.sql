drop table appr_comments;

create table appr_comments(
	COMM_CODE		NUMBER		PRIMARY KEY,
	M_CODE			VARCHAR2(50),
	COMM_DATE		DATE,
	COMM_CONTENT	VARCAHR2(1000),
	APPR_CODE		NUMBER references approve(appr_code)
					on delete cascade
);


drop sequence appr_com_seq;
create sequence appr_com_seq;
