-- ���� 7-28
select avg(�ܰ�)
from ��ǰ;

-- ���� 7-29
select sum(���) as "��� �հ�"
from ��ǰ
where ������ü = '�Ѻ�����';

-- ���� 7-30
select count(�����̵�) as ����
from ��;

select count(����) as ����
from ��;

select count(*) as ����
from ��;

-- ���� 7-31
select count(distinct ������ü) as "������ü ��"
from ��ǰ;

-- ���� 7-32
select �ֹ���ǰ, sum(����) as ���ֹ�����
from �ֹ�
group by �ֹ���ǰ;

-- ���� 7-33
select ������ü, count(*) as ��ǰ��, max(�ܰ�) as �ְ�
from ��ǰ
group by ������ü;

-- ���� 7-34
select ������ü, count(*) as ��ǰ��, max(�ܰ�) as �ְ�
from ��ǰ
group by ������ü having count(*) >= 3;

-- ���� 7-35
select ���, count(*) as ����, avg(������) as ���������
from ��
group by ��� having avg(������) >= 1000;

-- ���� 7-36
select �ֹ���ǰ, �ֹ���, sum(����) as ���ֹ�����
from �ֹ�
group by �ֹ���ǰ, �ֹ���;

-- ���� 7-37
select ��ǰ.��ǰ��
from ��ǰ, �ֹ�
where �ֹ�.�ֹ��� = 'banana' and ��ǰ.��ǰ��ȣ = �ֹ�.�ֹ���ǰ;

-- ���� 7-38
select �ֹ�.�ֹ���ǰ, �ֹ�.�ֹ�����
from ��, �ֹ�
where ��.���� >= 30 and ��.�����̵� = �ֹ�.�ֹ���;

select �ֹ���ǰ, �ֹ�����
from �� c, �ֹ� o
where c.���� >= 30 and c.�����̵� = o.�ֹ���;

-- ���� 7-39
select ��ǰ.��ǰ��
from ��, ��ǰ, �ֹ�
where ��.���̸� = '���' and ��.�����̵� = �ֹ�.�ֹ���
    and ��ǰ.��ǰ��ȣ = �ֹ�.�ֹ���ǰ;

-- ���� 7-40
select ��ǰ��, �ܰ�
from ��ǰ
where ������ü = (
    select ������ü
    from ��ǰ
    where ��ǰ�� = '���޺�Ŷ'
);

-- ���� 7-41
select ���̸�, ������
from ��
where ������ = (select max(������) from ��);

-- ���� 7-42
select ��ǰ��, ������ü
from ��ǰ
where ��ǰ��ȣ in (
    select �ֹ���ǰ
    from �ֹ�
    where �ֹ��� = 'banana'
);

-- ���� 7-43
select ��ǰ��, ������ü
from ��ǰ
where ��ǰ��ȣ not in (
    select �ֹ���ǰ
    from �ֹ�
    where �ֹ��� = 'banana'
);

-- ���� 7-44
select ��ǰ��, �ܰ�, ������ü
from ��ǰ
where �ܰ� > all (
    select �ܰ�
    from ��ǰ
    where ������ü = '���ѽ�ǰ'
);

-- ���� 7-45
select ���̸�
from ��
where exists (
    select *
    from �ֹ�
    where �ֹ����� = '2019-03-15'
        and �ֹ�.�ֹ��� = ��.�����̵�
);

-- ���� 7-46
select ���̸�
from ��
where not exists (
    select *
    from �ֹ�
    where �ֹ����� = '2019-03-15'
        and �ֹ�.�ֹ��� = ��.�����̵�
);

-- ���� 7-47
insert
into ��(�����̵�, ���̸�, ����, ���, ����, ������)
values ('strawberry', '������', 30, 'vip', '������', 100);

-- ���� 7-48
insert
into ��(�����̵�, ���̸�, ����, ���, ������)
values ('tomato', '������', 36, 'gold', 4000);

-- ���� 7-49
update ��ǰ
set ��ǰ�� = '��ū����'
where ��ǰ��ȣ = 'p03';

select * from ��ǰ;

-- ���� 7-50
update ��ǰ
set �ܰ� = �ܰ� * 1.1;

select * from ��ǰ;

-- ���� 7-51
update �ֹ�
set ���� = 5
where �ֹ��� in (
    select �����̵�
    from ��
    where ���̸� = '����ȭ'
);

select * from �ֹ�;

-- ���� 7-52
delete
from �ֹ�
where �ֹ����� = '2019-05-22';

select * from �ֹ�;

-- ���� 7-53
delete
from �ֹ�
where �ֹ��� in (
    select �����̵�
    from ��
    where ���̸� = '����ȭ'
);

select * from �ֹ�;

-- ���� 7-54
delete
from �ֹ�;

select * from �ֹ�;