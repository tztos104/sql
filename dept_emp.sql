--�μ� ���̺�� ������̺� ����(JOIN)
-- JOIN- 2�� �̻��� ���̺��� �����Ͽ� ����ϴ� ���

--�����ȣ, �����, �μ���ȣ, �μ����� ����Ͻÿ�
SELECT emp.empno, emp.empname, emp.deptno, emp.sal, dep.deptname
FROM employee emp, dept dep
WHERE emp.deptno = dep.deptno;

SELECT * FROM dept;
