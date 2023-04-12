--��� ���̺�
CREATE TABLE emp(
    --Į�� �̸� �ڷ���
    empno NUMBER(3) PRIMARY KEY, --�����ȣ
    empname VARCHAR2(20) NOT NULL, --����̸�
    sal NUMBER(10),
    creatdate DATE DEFAULT SYSDATE --�����
);

--����� ���� Į�� �߰�(ALTER ~ ADD Į���̸� �ڷ���)
ALTER TABLE emp ADD gender VARCHAR2(4);

--����� ���� �� �ڷ����� ���� (MODIFY)varchar2(10)
ALTER TABLE emp MODIFY gender VARCHAR2(10);

DESC emp;

--����߰�
INSERT INTO emp VALUES (100, '�̰�', 2500000, SYSDATE); 
INSERT INTO emp VALUES (101, '���', 3000000, SYSDATE);
INSERT INTO emp VALUES (102, '�����', 5000000, SYSDATE);
INSERT INTO emp VALUES (103, '�����', '' , SYSDATE);
INSERT INTO emp VALUES (104, '�����', 1500000 , SYSDATE, '��');

--��� ��ȸ
SELECT * FROM emp;

--��� ��ȣ, ����̸�, �޿��� �˻��Ͻÿ�
SELECT empno as ���, empname as �����, sal as �޿� FROM emp;

--�޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp 
WHERE sal IS NULL; --null�� �ƴ� ���� (is not null)

--�޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�
SELECT*FROM emp
WHERE sal <= 3000000 
ORDER BY sal DESC;

--DESC �� ����
--�޿��� ���� ������ �����Ͻÿ�
SELECT*FROM emp
ORDER BY sal DESC;

--������ '��' �� ����� '����'�� �����Ͻÿ� UPDATE
--SELECT * FROM emp
--WHERE empno =104;

UPDATE emp SET gender = '����'
WHERE empno = 104;


--����� ���� ���Ͻÿ�
--�����Լ� count() ,sum() ,avg() , max() ,min()
SELECT COUNT(*) as �����
FROM emp;
--��� �޿��� �հ� ���
SELECT SUM(sal) �޿��հ� , AVG(sal) �޿����
FROM emp;

--��� �̸��� ������� ��� ����
DELETE FROM emp
WHERE empname= '�����'; 

ROLLBACK;
--commit ������ �ѹ� ����
COMMIT;