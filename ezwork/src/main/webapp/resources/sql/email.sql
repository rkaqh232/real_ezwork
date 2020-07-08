drop table email;

create table email(
	MAIL_NUM		NUMBER,
	MAIL_SENDER  	VARCHAR2(30),
	MAIL_RECIPIENT	VARCHAR2(30),
	MAIL_SUBJECT	VARCHAR2(300),
	MAIL_CONTENT    VARCHAR2(4000),
	MAIL_FILE       VARCHAR2(50),
	MAIL_ORIGINAL	VARCHAR2(50),
	MAIL_RCHECK	    NUMBER,
	MAIL_DATE		DATE,
	PRIMARY KEY(MAIL_NUM)
);