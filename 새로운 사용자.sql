create table ��(
    �����̵� varchar(20) not null,
    ���̸� varchar(10) not null,
    ���� int,
    ��� varchar(10) not null,
    ���� varchar(20),
    ������ int default 0,
    primary key(�����̵�)
);

create table ��ǰ(
    ��ǰ��ȣ char(3) not null,
    ��ǰ�� varchar(20),
    ��� int,
    �ܰ� int,
    ������ü varchar(20),
    PRIMARY KEY(��ǰ��ȣ),
    check(��� >= 0 and ��� <= 10000)
);

create table �ֹ�(
    �ֹ���ȣ char(3) not null,
    �ֹ��� varchar(20),
    �ֹ���ǰ char(3),
    ���� int,
    ����� varchar(30),
    �ֹ����� date,
    primary key(�ֹ���ȣ),
    foreign key(�ֹ���) references ��(�����̵�),
    foreign key(�ֹ���ǰ) references ��ǰ(��ǰ��ȣ)
);

insert into �� values ('apple', '����ȭ', 20, 'gold', '�л�', 1000);
insert into �� values ('banana', '�輱��', 25, 'vip', '��ȣ��', 2500);
insert into �� values ('carrot', '���', 28, 'gold', '����', 4500);
insert into �� values ('orange', '����', 22, 'silver', '�л�', 0);
insert into �� values ('melon', '������', 35, 'gold', 'ȸ���', 5000);
insert into �� values ('peach', '������', NULL, 'silver', '�ǻ�', 300);
insert into �� values ('pear', 'ä����', 31, 'silver', 'ȸ���', 500);

insert into ��ǰ values ('p01', '�׳ɸ���', 5000, 4500, '���ѽ�ǰ');
insert into ��ǰ values ('p02', '�ſ��̸�', 2500, 5500, '�α�Ǫ��');
insert into ��ǰ values ('p03', '��������', 3600, 2600, '�Ѻ�����');
insert into ��ǰ values ('p04', '�������ݸ�', 1250, 2500, '�Ѻ�����');
insert into ��ǰ values ('p05', '��ū���', 2200, 1200, '���ѽ�ǰ');
insert into ��ǰ values ('p06', '����쵿', 1000, 1550, '�α�Ǫ��');
insert into ��ǰ values ('p07', '���޺�Ŷ', 1650, 1500, '�Ѻ�����');

insert into �ֹ� values ('o01', 'apple', 'p03', 10, '����� ������', '19/01/01');
insert into �ֹ� values ('o02', 'melon', 'p01', 5, '��õ�� ��籸', '19/01/10');
insert into �ֹ� values ('o03', 'banana', 'p06', 45, '��⵵ ��õ��', '19/01/11');
insert into �ֹ� values ('o04', 'carrot', 'p02', 8, '�λ�� ������', '19/02/01');
insert into �ֹ� values ('o05', 'melon', 'p06', 36, '��⵵ ���ν�', '19/02/20');
insert into �ֹ� values ('o06', 'banana', 'p01', 19, '��û�ϵ� ������', '19/03/02');
insert into �ֹ� values ('o07', 'apple', 'p03', 22, '����� ��������', '19/03/15');
insert into �ֹ� values ('o08', 'pear', 'p02', 50, '������ ��õ��', '/19/04/10');
insert into �ֹ� values ('o09', 'banana', 'p04', 15, '���󳲵� ������', '19/04/11');
insert into �ֹ� values ('o10', 'carrot', 'p03', 20, '��⵵ �Ⱦ��', '19/05/22');