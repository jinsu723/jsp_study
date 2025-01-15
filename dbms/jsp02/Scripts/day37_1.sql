SELECT	SYSDATE 
FROM	dual
;

CREATE TABLE tbl_user(
	user_number	NUMBER
  , USER_id		varchar2(10)
  , user_pw		varchar2(10)
  , user_name	varchar2(300)
  , user_age	NUMBER
  , user_gender	char(1)
  , CONSTRAINT pk_user PRIMARY key(user_number)
);

CREATE SEQUENCE seq_user;

SELECT * FROM tbl_user;