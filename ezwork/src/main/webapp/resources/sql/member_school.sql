DROP TABLE member;
-- ����
-- �з����� ���̺�
create table MEM_SCHOOL(

SC_NAME  		VARCARH2(50) PRIMARY KEY, -- �б���
M_CODE   		VARCARH2(20),			  -- �����ȣ
SC_MAJOR 		VARCARH2(20), 			  -- ����
SC_DEGREE 		VARCARH2(20), 			  -- ����
SC_ADDRESS 		VARCARH2(50), 			  -- ������
SC_ENT_DAY 		DATE, 					  -- ��������
SC__GRAD_DAY 	DATE  					  -- ��������
);


