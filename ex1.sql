--���� �ڷ��� ��
CREATE TABLE ex1(
    culumn1 CHAR(10),
    culumn2 VARCHAR2(10)
    );
    
--�ڷ��߰�

INSERT INTO ex1(culumn1, culumn2) VALUES ('abc','abc');
INSERT INTO ex1 VALUES ('����','����');

--�ڷ� ��ȸ
select culumn1, length(culumn1) len1, culumn2, length(culumn2) len2 from ex1;

commit;