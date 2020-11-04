-- 예제 7-28
select avg(단가)
from 제품;

-- 예제 7-29
select sum(재고량) as "재고량 합계"
from 제품
where 제조업체 = '한빛제과';

-- 예제 7-30
select count(고객아이디) as 고객수
from 고객;

select count(나이) as 고객수
from 고객;

select count(*) as 고객수
from 고객;

-- 예제 7-31
select count(distinct 제조업체) as "제조업체 수"
from 제품;

-- 예제 7-32
select 주문제품, sum(수량) as 총주문수량
from 주문
group by 주문제품;

-- 예제 7-33
select 제조업체, count(*) as 제품수, max(단가) as 최고가
from 제품
group by 제조업체;

-- 예제 7-34
select 제조업체, count(*) as 제품수, max(단가) as 최고가
from 제품
group by 제조업체 having count(*) >= 3;

-- 예제 7-35
select 등급, count(*) as 고객수, avg(적립금) as 평균적립금
from 고객
group by 등급 having avg(적립금) >= 1000;

-- 예제 7-36
select 주문제품, 주문고객, sum(수량) as 총주문수량
from 주문
group by 주문제품, 주문고객;

-- 예제 7-37
select 제품.제품명
from 제품, 주문
where 주문.주문고객 = 'banana' and 제품.제품번호 = 주문.주문제품;

-- 예제 7-38
select 주문.주문제품, 주문.주문일자
from 고객, 주문
where 고객.나이 >= 30 and 고객.고객아이디 = 주문.주문고객;

select 주문제품, 주문일자
from 고객 c, 주문 o
where c.나이 >= 30 and c.고객아이디 = o.주문고객;

-- 예제 7-39
select 제품.제품명
from 고객, 제품, 주문
where 고객.고객이름 = '고명석' and 고객.고객아이디 = 주문.주문고객
    and 제품.제품번호 = 주문.주문제품;

-- 예제 7-40
select 제품명, 단가
from 제품
where 제조업체 = (
    select 제조업체
    from 제품
    where 제품명 = '달콤비스킷'
);

-- 예제 7-41
select 고객이름, 적립금
from 고객
where 적립금 = (select max(적립금) from 고객);

-- 예제 7-42
select 제품명, 제조업체
from 제품
where 제품번호 in (
    select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

-- 예제 7-43
select 제품명, 제조업체
from 제품
where 제품번호 not in (
    select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

-- 예제 7-44
select 제품명, 단가, 제조업체
from 제품
where 단가 > all (
    select 단가
    from 제품
    where 제조업체 = '대한식품'
);

-- 예제 7-45
select 고객이름
from 고객
where exists (
    select *
    from 주문
    where 주문일자 = '2019-03-15'
        and 주문.주문고객 = 고객.고객아이디
);

-- 예제 7-46
select 고객이름
from 고객
where not exists (
    select *
    from 주문
    where 주문일자 = '2019-03-15'
        and 주문.주문고객 = 고객.고객아이디
);

-- 예제 7-47
insert
into 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
values ('strawberry', '최유경', 30, 'vip', '공무원', 100);

-- 예제 7-48
insert
into 고객(고객아이디, 고객이름, 나이, 등급, 적립금)
values ('tomato', '정은심', 36, 'gold', 4000);

-- 예제 7-49
update 제품
set 제품명 = '통큰파이'
where 제품번호 = 'p03';

select * from 제품;

-- 예제 7-50
update 제품
set 단가 = 단가 * 1.1;

select * from 제품;

-- 예제 7-51
update 주문
set 수량 = 5
where 주문고객 in (
    select 고객아이디
    from 고객
    where 고객이름 = '정소화'
);

select * from 주문;

-- 예제 7-52
delete
from 주문
where 주문일자 = '2019-05-22';

select * from 주문;

-- 예제 7-53
delete
from 주문
where 주문고객 in (
    select 고객아이디
    from 고객
    where 고객이름 = '정소화'
);

select * from 주문;

-- 예제 7-54
delete
from 주문;

select * from 주문;