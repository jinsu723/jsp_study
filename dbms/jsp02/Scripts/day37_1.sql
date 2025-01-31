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

INSERT INTO tbl_user
VALUES(1, 'aaa', '1234', '김태현', '20', 'M');

CREATE SEQUENCE seq_user1;

SELECT * FROM tbl_user;

DROP TABLE tbl_user1;
drop TABLE test1;

DROP SEQUENCE seq_user;



  CREATE TABLE tbl_user (
    user_number NUMBER,
    user_id VARCHAR2(20) UNIQUE NOT NULL,
    user_passwd VARCHAR2(100) NOT NULL,
    user_nickname VARCHAR2(50) UNIQUE NOT NULL,
    user_tier VARCHAR2(15) NOT NULL,
    user_phone VARCHAR2(15) UNIQUE NOT NULL,
    user_join_date DATE,
    user_ben_ctn NUMBER DEFAULT 0,
    CONSTRAINT pk_user PRIMARY KEY(user_number)
);
CREATE SEQUENCE seq_user increment by 1 start with 1;

CREATE TABLE tbl_forum (
    forum_number NUMBER,
    user_number NUMBER,
    forum_category VARCHAR2(5) NOT NULL,
    forum_title VARCHAR2(150) NOT NULL,
    forum_date DATE,
    forum_update DATE,
    CONSTRAINT pk_forum PRIMARY KEY(forum_number),
    CONSTRAINT fk_forum_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_forum increment by 1 start with 1;

CREATE TABLE tbl_forum_detail (
    forum_detail_number NUMBER,
    forum_number NUMBER,
    forum_content VARCHAR2(2000) NOT NULL,
    img_source VARCHAR2(2000),
    CONSTRAINT pk_forum_detail PRIMARY KEY(forum_detail_number),
    CONSTRAINT fk_forum_detail_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_forum_detail increment by 1 start with 1;

CREATE TABLE tbl_comment (
    comment_number NUMBER,
    forum_number NUMBER,
    user_number NUMBER,
    comment_content VARCHAR2(500) NOT NULL,
    comment_date DATE,
    CONSTRAINT pk_comment PRIMARY KEY(comment_number),
    CONSTRAINT fk_comment_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE,
    CONSTRAINT fk_comment_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_comment increment by 1 start with 1;

CREATE TABLE tbl_party (
    party_number NUMBER,
    forum_number NUMBER,
    user_number NUMBER,
    party_state VARCHAR2(20) DEFAULT '대기중',
    CONSTRAINT pk_party PRIMARY KEY(party_number),
    CONSTRAINT fk_party_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE,
    CONSTRAINT fk_party_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_party increment by 1 start with 1;

CREATE TABLE tbl_ben (
    ben_number NUMBER,
    user_num NUMBER,
    ben_start_date DATE,
    ben_period NUMBER NOT NULL,
    ben_reason VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_ben PRIMARY KEY(ben_number),
    CONSTRAINT fk_ben_user FOREIGN KEY (user_num) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_ben increment by 1 start with 1;

CREATE TABLE tbl_manager (
    manager_id VARCHAR2(20),
    manager_passwd VARCHAR2(100) NOT NULL,
    CONSTRAINT pk_manager PRIMARY KEY(manager_id)
);
CREATE SEQUENCE seq_manager increment by 1 start with 1;


SELECT ben_number
FROM	tbl_ben
;
