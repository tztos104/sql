--��� ���̺�(�μ��� ���踦 ����)
CREATE TABLE employee (
    empno     NUMBER(3) PRIMARY KEY, --�����ȣ
    empname   VARCHAR2(20) NOT NULL, --����̸�
    sal       NUMBER(10),
    creatdate DATE DEFAULT sysdate,
    gender    VARCHAR2(10),
    deptno    VARCHAR2(4),
    --�ܷ�Ű (FOREIGN KEY) ��������
    CONSTRAINT emp_fk FOREIGN KEY (deptno)
        REFERENCES dept(deptno)
);--ON DELETE CASCADE(�μ��� �����ϸ� �����ϰ� �ִ� ����� ����)

INSERT INTO employee VALUES ( 100, '�̰�', 2500000, sysdate,'����', '1000');
INSERT INTO employee VALUES ( 101, '�̻�', 2000000, sysdate,'����', '1001');
INSERT INTO employee VALUES ( 102, '�ڴ�', 1500000, sysdate,'����', '1002');
INSERT INTO employee VALUES ( 103, '���', 3500000, sysdate,'', '1003');
INSERT INTO employee VALUES ( 104, '�ڱ׸�', 4500000, sysdate,'��', '1000');
INSERT INTO employee VALUES ( 105, '���߿�', 4500000, sysdate,'����', '1000');


SELECT * FROM employee;

--������ ������ ����� �˻�
SELECT * FROM employee
WHERE gender = '����'
AND sal >= 2500000;

SELECT * FROM employee
WHERE sal >=2000000
AND sal <=3000000;

--BETWEEN
SELECT * FROM employee
WHERE sal BETWEEN 2000000
AND 3000000;

--���ڿ� �˻� : �Ϻ� ���� ���� LIKE ����
--���� '��'�� ����� �˻��Ͻþ� 
SELECT * FROM employee
WHERE empname LIKE '��%';

--��� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) as �����
FROM employee;

--�ߺ����� �μ���ȣ�� �˻��Ͻÿ�(DISTINCT Ű����)
SELECT DISTINCT deptno �μ���ȣ
FROM employee;

--GROUP  BY ��(�Ҽӵ� �׷�ȭ), ������-HAVING
--�μ��� �޿� �Ѿ��� ���Ͻÿ�
SELECT deptno �μ�, SUM(sal) �޿��Ѿ�, AVG(sal) �޿����
FROM employee
GROUP BY deptno
HAVING AVG(sal)>=3000000;
