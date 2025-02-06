-- 켄바 포폴 만들어야됨

SELECT sysdate FROM dual;

-- member 테이블 생성
CREATE TABLE tbl_member(
		member_number NUMBER,
		member_id varchar2(300),
		member_password varchar2(300),
		member_name varchar2(300),
   		member_phone_number varchar2(300),
		member_age NUMBER(3),
		member_gender char(1),
		CONSTRAINT pk_member PRIMARY KEY(member_number)
	);
	
SELECT * FROM tbl_member;

-- member 시퀀스 생성
CREATE SEQUENCE seq_member START WITH 1 INCREMENT BY 1
nocache
nocycle;

-- board 테이블 생성
CREATE TABLE tbl_board(
	board_number		number
  , board_title			varchar2(300)
  , board_content		varchar2(1000)
  , board_date			timestamp DEFAULT current_timestamp  -- 현재 날짜/시간 기본값
  , board_read_count	NUMBER DEFAULT 0
  , member_number		NUMBER
  , CONSTRAINT pk_board PRIMARY KEY (board_number)
  , CONSTRAINT fk_board FOREIGN KEY (member_number) REFERENCES tbl_member(member_number) ON DELETE cascade
);

SELECT * FROM tbl_board
ORDER BY board_number;

CREATE SEQUENCE seq_board START WITH 1 INCREMENT BY 1
NOcache
nocycle;

INSERT INTO tbl_member
VALUES
--(seq_member.nextval, 'aaa', 'test123', '길진수', '01049396668', 28, 'M');
(seq_member.nextval, 'bbb', 'test123', '진수길', '01012345678', 28, 'W');

DROP TABLE tbl_board;

INSERT INTO TBL_BOARD tb 
VALUES(seq_board.nextval, 'test', 'test입니다', sysdate, 0, 1);

CREATE TABLE tbl_file(
	file_system_name	varchar2(300)  -- 서버에 저장되는 실제 파일명
  , file_original_name	varchar2(300)  -- 원본 파일명
  , board_number		NUMBER
  , CONSTRAINT pk_file PRIMARY key(file_system_name)
  , CONSTRAINT fk_file FOREIGN key(board_number) REFERENCES tbl_board(board_number)
);

SELECT * FROM tbl_file;

SELECT * FROM tbl_member;

CREATE TABLE tbl_reply(
	reply_number	NUMBER
  , reply_content	varchar2(500)
  , reply_date		DATE DEFAULT current_timestamp
  , board_number	NUMBER
  , member_number	NUMBER
  , CONSTRAINT pk_reply PRIMARY key(reply_number)
  , CONSTRAINT fk_reply_board FOREIGN key(board_number) REFERENCES tbl_board(board_number) ON DELETE CASCADE
  , CONSTRAINT fk_reply_member FOREIGN key(member_number) REFERENCES tbl_member(member_number) ON DELETE cascade
);

CREATE SEQUENCE seq_reply
START WITH 1 INCREMENT BY 1 nocache nocycle;

SELECT * FROM tbl_reply;

INSERT INTO tbl_reply
VALUES
(seq_reply.nextvar, '1234', sysdate, '1', '1');