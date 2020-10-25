-- 예제 7-10
select 고객아이디, 고객이름, 등급
from 고객;

-- 예제 7-11
select 고객아이디, 고객이름, 나이, 등급, 직업, 적립금
from 고객;

-- 예제 7-12
select *
from 고객;

-- 예제 7-13
select 제조업체
from 제품;

-- 예제 7-14
select all 제조업체
from 제품;

-- 예제 7-15
select distinct 제조업체
from 제품;

-- 예제 7-16
select 제품명, 단가 as 가격
from 제품;

-- 예제 7-17
select 제품명, 단가 + 500 as "조정 단가"
from 제품;

-- 예제 7-18
select 제품명, 재고량, 단가
from 제품
where 제조업체 = '한빛제과';

-- 예제 7-19
select 주문제품, 수량, 주문일자
from 주문
where 주문고객 = 'apple' and 수량 >= 15;

-- 예제 7-20
select 주문제품, 수량, 주문일자, 주문고객
from 주문
where 주문고객 = 'apple' or 수량 >= 15;

-- 예제 7-21
select 제품명, 단가, 제조업체
from 제품
where 단가 >= 2000 and 단가 <= 3000;

-- 예제 7-22
select 고객이름, 나이, 등급, 적립금
from 고객
where 고객이름 like '김%';

-- 예제 7-23
select 고객아이디, 고객이름, 등급
from 고객
where 고객아이디 like '_____';

-- 예제 7-24
select 고객이름
from 고객
where 나이 is null;

-- 예제 7-25
select 고객이름
from 고객
where 나이 is not null;

-- 예제 7-26
select 고객이름, 등급, 나이
from 고객
order by 나이 desc;

-- 예제 7-27
select 주문고객, 주문제품, 수량, 주문일자
from 주문
where 수량 >= 10
order by 주문제품 asc, 수량 desc;