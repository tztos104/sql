--�μ� ���̺�(dept)
CREATE TABLE dept(
    --Į���̸� �ڷ���
    deptno   VARCHAR2(4), PRIMARY KEY,
    deptname VARCHAR2(20) NOT NULL,
    office VARCHAR2 (10)
    );
    
    --�μ� �ڷ� �߰�
INSERT INTO dept (deptno, deptname, office) VALUES ('1000','�λ���','����');
INSERT INTO dept (deptno, deptname, office) VALUES ('1001','������','����');
INSERT INTO dept (deptno, deptname, office) VALUES ('1002','������','����');
INSERT INTO dept (deptno, deptname, office) VALUES ('1003','������','');
--�μ� �ڷ� �˻�
SELECT deptno, deptname, office FROM dept;

COMMIT;

--Ư���� �ڷ� �˻� : WHERE �� ����
SELECT*FROM dept
WHERE deptno ='1002';

--�ڷ� ���� : ORDER BY Į���� (ASC?DESC)
SELECT * FROM dept
ORDER BY deptno DESC;

COMMIT;



