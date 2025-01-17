SELECT * FROM tbl_user;

DROP TABLE tbl_user;\

CREATE TABLE tbl_member (
	member_number	NUMBER
  , member_id		varchar2(300)
  , member_password	varchar2(300)
  , member_name		varchar2(300)
  , member_age		NUMBER
  , member_gender	char(1)
  , CONSTRAINT pk_member PRIMARY key(member_number)
);


SELECT * FROM tbl_member 
ORDER BY member_number;

SELECT	member_name
FROM 	tbl_member
WHERE 	member_id = 'aaa' AND member_password = '1234';

DROP SEQUENCE seq_member;

CREATE SEQUENCE seq_member
START WITH 1
INCREMENT BY 1
nocache  -- 시퀀스 값을 미리 메모리에 캐싱하지 않도록 설정(고유 번호가 끊기지 않아야 하는 경우 사용-데이터 연속성이 중요할 때)
nocycle  -- 최대값에 도달하면 재시작하지 않도록 설정
;

--ON DELETE cascade

insert into tbl_member(member_number, member_id, member_password, member_name, member_age, member_gender)
values(seq_member.nextVal, 'aaa', '1234', 'naem', 11, 'M');

