create table ��۾�ü(
    ��ü��ȣ char(3) not null,
    ��ü�� varchar(20),
    �ּ� varchar(100),
    ��ȭ��ȣ varchar(20),
    primary key(��ü��ȣ)
);

alter table �� add ���Գ�¥ date;
alter table �� drop column ���Գ�¥;

alter table �� add constraint chk_age check(���� >= 20);
alter table �� drop constraint chk_age;

drop table ��۾�ü;