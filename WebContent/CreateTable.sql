-- ȸ��/MEMBER
create table members
(
	id varchar2(30) primary key,	--���̵�
	pwd varchar2(30) not null,	--��й�ȣ
	name varchar2(30) not null,	--�̸�
	birth date not null,	--�������
	gender varchar2(10) not null check(gender in('M', 'W')),	--����
	email varchar2(30) not null unique,	--�̸���
	phone varchar2(30) not null unique,	--�ڵ���
	address varchar2(50) not null,	--�ּ�
	isSleep varchar2(20),	--�޸����
	recentAcc date not null	--�ֱ�����
);

-- ��ǰ/ITEMS
create table items
(
	iNum number(5,0) primary key,	-- ǰ��
	iName varchar2(30) not null,	--��ǰ��
	price number(12,2),	--����
	iSale number, --������
	iGender varchar2(10),	--����
	iCategory varchar2(50) not null,	--ī�װ�
	color varchar2(20),	--����
	iSize varchar2(20),	--������
	weight number,	--����
	material varchar2(30),	--����
	kDetail varchar2(4000),	--�ѱۼ���
	eDetail varchar2(4000)	--�����
	iThumbnail varchar2(300) -- �����
);

-- ��ٱ���/ShoppingBasket
create table shoppingBasket
(
	sbNum number primary key,	--��ȣ
	id varchar2(30) references members(id),	--���̵�
	iNum number(5,0) references items(inum),	--ǰ��
	sbCnt number	--����
);

-- ��ǰ �̹���/Items_Image
create table items_image
(
	imgNum number primary key,	--�̹��� ��ȣ
	iNum number(5,0) references items(inum),	--ǰ��
	imgName varchar2(500)	--��ǰ �̹������ϸ�
);

-- ���� �Խ���/QNAboard
create table QnABoard
(
	ibNum number primary key,	--�Խñ۹�ȣ
	id varchar2(30) references members(id), --���̵�
	iNum number(5,0) references items(inum),	--ǰ��
	qCategory varchar2(100),	--ī�װ�
	qTitle varchar2(100),	--����
	ibPwd varchar2(20),	--�Խñۺ�й�ȣ
	ibContent varchar2(1000),	--����
	orgName varchar2(100),	--����������
	saveName varchar2(100),	--�����̹�����
	ibDate date,	--�ۼ���¥	
	ans varchar2(4000),	--���
	ansDate date	--��۳�¥
);

-- ���/Stock
create table stock
(
	sNum number primary key,	--����ȣ
	iNum number(5,0) references items(inum),	--ǰ��
	rs number check(rs in('1', '2')),	--�����
	cnt number,	--��������
	total number,	--�Ѽ���
	sDate date	--�����¥
);

-- ���ų���/purchase
create table purchase
(
	pNum number primary key,	--���Ź�ȣ
	id varchar2(30) references members(id),	--���̵�	
	pAddress varchar2(400),		--�����
	pWay varchar2(30) check(pway in('ī��', '����')),	--��������
	pDate date,	--���ų�¥	
	pStatus varchar2(30) check(pStatus in('�������', '��ǰ', '��ǰ�غ���', '��۽���', '�����', '��ۿϷ�', '����Ȯ��'))	--��ǰ������
	pTotal number --�ѱݾ�
);

-- �������/delevery
create table delivery
(
	dNum number primary key,	--��۹�ȣ
	pNum number references purchase(pnum),	--���Ź�ȣ
	dCompany varchar2(30),	--�ù��
	trackingNum number,	--�����ȣ
	dStatus varchar2(400)	--��ۻ���
);

-- ���ų��� ��/pDetail
create table pDetail
(
	pdNum number primary key,	--���Ż󼼹�ȣ
	iNum number(5,0) references items(inum),	--ǰ�� 
	pNum number references purchase(pnum),	--���Ź�ȣ
	pCnt number,	--���Ż�ǰ����
	pPay number	--��ǰ�� �ݾ�
);

-- ����Խ���/reviewBoard
create table reviewBoard
(
	rbNum number primary key,	--�����ȣ
	pdNum number references pDetail(pdNum),	--���Ż󼼹�ȣ
	score number,	--������
	rbContent varchar2(1000),	--���䳻��
	orgName varchar2(50),	--����������
	saveName varchar2(50)	--�����̹�����
	rDate date --�ۼ���¥
);

-- �����ڼ�/access
create table accessr
(
	aDate date primary key,	--��¥
	aCnt number	--������ ��
);

---------- drop table ---------- 
drop table accessr;
drop table reviewBoard;
drop table pDetail;
drop table delivery;
drop table purchase;
drop table stock;
drop table QnABoard;
drop table items_image;
drop table shoppingBasket;
drop table items;
drop table members;



---------- create sequence -----------
create SEQUENCE accessr_seq;
create SEQUENCE reviewBoard_seq;
create SEQUENCE pDetail_seq;
create SEQUENCE delevery_seq;
create SEQUENCE purchase_seq;
create SEQUENCE stock_seq;
create SEQUENCE QnABoard_seq;
create SEQUENCE items_image_seq;
create SEQUENCE shoppingBasket_seq;
create SEQUENCE items_seq;
create SEQUENCE members_seq;



---------- drop sequence -------------
drop SEQUENCE accessr_seq;
drop SEQUENCE reviewBoard_seq;
drop SEQUENCE pDetail_seq;
drop SEQUENCE delevery_seq;
drop SEQUENCE purchase_seq;
drop SEQUENCE stock_seq;
drop SEQUENCE QnABoard_seq;
drop SEQUENCE items_image_seq;
drop SEQUENCE shoppingBasket_seq;
drop SEQUENCE items_seq;
drop SEQUENCE members_seq;  