
DROP TABLE member;


create table member(
	M_CODE    				VARCHAR2(20) PRIMARY KEY, -- �����ȣ
	M_PASS       		    VARCHAR2(20),		   -- ��й�ȣ not null
	M_WORK_C  				NUMBER,                -- ����ڵ�(�Ƹ�����Ʈ,�����,������..)
	M_PART_C  				VARCHAR2(10),          -- �μ��ڵ�
	M_LEVEL  				NUMBER,                -- �����ڵ�(1,2,3,4,5������ 5�ܰ谡 CEO)
	M_NAME    				VARCHAR2(15), 		   -- �����, ���� not null
	M_NAME_EN 				VARCHAR2(15),          -- ��������
	M_PRI_NUMBER  		    NUMBER,                -- �ֹι�ȣ
	M_GENDER 				varchar2(8) CHECK ( gender IN ('��','��') ),           -- ����     boolean�� ��� �Ұ���
	M_BIRTH  				date,                  -- �������
	M_ARMY   				varchar2(5),           -- ���ʿ��� boolean�� ��� �Ұ���
	M_MARRIAGE 				varchar2(5),           -- ��ȥ���� boolean�� ��� �Ұ���
	M_TEL       			VARCHAR2(20),	       -- ������ȭ
	M_MOBILE_TEL   		    VARCHAR2(20),	       -- �ڵ���
	M_EMAIL        		    VARCHAR2(100),	       -- �̸���
	M_ADDRESS       		VARCHAR2(100),         -- �����ּ�
	M_JOIN_DATE    		    date,                  -- �Ի���
	M_RESIGN_DATE  		    date                   -- �����	
);

 	
 
