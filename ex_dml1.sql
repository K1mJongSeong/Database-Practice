-- ���� 7-10
select �����̵�, ���̸�, ���
from ��;

-- ���� 7-11
select �����̵�, ���̸�, ����, ���, ����, ������
from ��;

-- ���� 7-12
select *
from ��;

-- ���� 7-13
select ������ü
from ��ǰ;

-- ���� 7-14
select all ������ü
from ��ǰ;

-- ���� 7-15
select distinct ������ü
from ��ǰ;

-- ���� 7-16
select ��ǰ��, �ܰ� as ����
from ��ǰ;

-- ���� 7-17
select ��ǰ��, �ܰ� + 500 as "���� �ܰ�"
from ��ǰ;

-- ���� 7-18
select ��ǰ��, ���, �ܰ�
from ��ǰ
where ������ü = '�Ѻ�����';

-- ���� 7-19
select �ֹ���ǰ, ����, �ֹ�����
from �ֹ�
where �ֹ��� = 'apple' and ���� >= 15;

-- ���� 7-20
select �ֹ���ǰ, ����, �ֹ�����, �ֹ���
from �ֹ�
where �ֹ��� = 'apple' or ���� >= 15;

-- ���� 7-21
select ��ǰ��, �ܰ�, ������ü
from ��ǰ
where �ܰ� >= 2000 and �ܰ� <= 3000;

-- ���� 7-22
select ���̸�, ����, ���, ������
from ��
where ���̸� like '��%';

-- ���� 7-23
select �����̵�, ���̸�, ���
from ��
where �����̵� like '_____';

-- ���� 7-24
select ���̸�
from ��
where ���� is null;

-- ���� 7-25
select ���̸�
from ��
where ���� is not null;

-- ���� 7-26
select ���̸�, ���, ����
from ��
order by ���� desc;

-- ���� 7-27
select �ֹ���, �ֹ���ǰ, ����, �ֹ�����
from �ֹ�
where ���� >= 10
order by �ֹ���ǰ asc, ���� desc;