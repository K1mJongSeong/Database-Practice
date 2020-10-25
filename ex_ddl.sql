create table 배송업체(
    업체번호 char(3) not null,
    업체명 varchar(20),
    주소 varchar(100),
    전화번호 varchar(20),
    primary key(업체번호)
);

alter table 고객 add 가입날짜 date;
alter table 고객 drop column 가입날짜;

alter table 고객 add constraint chk_age check(나이 >= 20);
alter table 고객 drop constraint chk_age;

drop table 배송업체;