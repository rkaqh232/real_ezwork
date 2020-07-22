drop table approve;

create table approve(
	APPR_CODE		NUMBER			PRIMARY KEY,	--���� ��ȣ
	M_CODE			VARCHAR2(50),					--��� �ڵ�(id)
	M_PART			VARCHAR2(30),
	APPR_TITLE		VARCHAR2(200),					--����
	APPR_CONTENT	VARCHAR2(1000),					--����
	FIRST_CODE		VARCHAR2(50),					--1-���
	M_PART_F		VARCHAR2(30),
	SECOND_CODE		VARCHAR2(50),					--2-���
	M_PART_S		VARCHAR2(30),
	THIRD_CODE		VARCHAR2(50),					--3-���
	M_PART_T		VARCHAR2(30),
	APPR_FILE		VARCHAR2(500),					--����� ���ϸ�
	APPR_ORIGIN		VARCHAR2(500),					--original ���ϸ�
	APPR_STAT		NUMBER,							--���� ����
	APPR_DATE		date,							--���� ��¥
	APPR_COMP_DATE	date,							--�Ϸ� ��¥
	APPR_VAL		NUMBER							--??

);

insert into approve(
appr_code, m_code, appr_title, appr_content, first_code, second_code, third_code,
appr_file, appr_origin, appr_stat, appr_date,appr_comp_date, appr_val
)
values(
appr_seq.nextval , 'test', 'title','content','test1','test2','test3',
null,null,0,sysdate,null,0
)

select * from approve;

drop sequence appr_seq;
create sequence appr_seq;


