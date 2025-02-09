--DROP table tbl_file;
--DROP TABLE tbl_party;
--DROP TABLE tbl_comment;
--DROP TABLE tbl_forum;
--DROP TABLE tbl_ben;
--DROP TABLE tbl_user;
--DROP TABLE tbl_admin;
--
--DROP SEQUENCE seq_user;
--DROP SEQUENCE seq_admin;
--drop SEQUENCE seq_ben;
--DROP SEQUENCE seq_comment;
--DROP SEQUENCE seq_file;
--DROP SEQUENCE seq_forum;
--DROP SEQUENCE seq_party;


CREATE TABLE tbl_user (
    user_number NUMBER,
    user_id VARCHAR2(20) NOT NULL,
    user_passwd VARCHAR2(20) NOT NULL,
    user_nickname VARCHAR2(30) NOT NULL,
    user_tier VARCHAR2(30) NOT NULL,
    user_phone VARCHAR2(15) NOT NULL,
    user_join_date DATE,
    user_ben_cnt NUMBER DEFAULT 0,
    CONSTRAINT pk_user PRIMARY KEY (user_number),
    CONSTRAINT uq_user_id UNIQUE (user_id),
    CONSTRAINT uq_user_nickname UNIQUE (user_nickname),
    CONSTRAINT uq_user_phone UNIQUE (user_phone)
);
--CREATE SEQUENCE seq_user START WITH 1 INCREMENT BY 1
--nocache  --시퀀스 값을 미리 메모리에 캐싱하지 않도록 설정
--nocycle; --최대갑셍 도달하면 재시작하지 않도록 설정

CREATE TABLE tbl_forum (
    forum_number NUMBER,
    user_number NUMBER,
    forum_category VARCHAR2(10) NOT NULL,
    forum_title VARCHAR2(150) NOT NULL,
    forum_date DATE,
    forum_update DATE,
    forum_content VARCHAR2(2000) NOT NULL,
    CONSTRAINT pk_forum PRIMARY KEY (forum_number),
    CONSTRAINT fk_forum_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
--CREATE SEQUENCE seq_forum START WITH 1 INCREMENT BY 1 nocache nocycle;

CREATE TABLE tbl_file (
    file_number NUMBER,
    forum_number NUMBER,
    img_source VARCHAR2(200),
    CONSTRAINT pk_file PRIMARY KEY (file_number),
    CONSTRAINT fk_file_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE
);
--CREATE SEQUENCE seq_file START WITH 1 INCREMENT BY 1 nocache nocycle;

CREATE TABLE tbl_comment (
    comment_number NUMBER,
    forum_number NUMBER,
    user_number NUMBER,
    comment_content VARCHAR2(500) NOT NULL,
    comment_date DATE,
    CONSTRAINT pk_comment PRIMARY KEY (comment_number),
    CONSTRAINT fk_comment_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE,
    CONSTRAINT fk_comment_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
--CREATE SEQUENCE seq_comment START WITH 1 INCREMENT BY 1 nocache nocycle;


CREATE TABLE tbl_party (
    party_number NUMBER,
    forum_number NUMBER,
    user_number NUMBER,
    party_state VARCHAR2(20) DEFAULT '대기중',
    CONSTRAINT pk_party PRIMARY KEY (party_number),
    CONSTRAINT fk_party_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE,
    CONSTRAINT fk_party_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
--CREATE SEQUENCE seq_party START WITH 1 INCREMENT BY 1 nocache nocycle;


CREATE TABLE tbl_ben (
    ben_number NUMBER,
    user_num NUMBER,
    ben_start_date DATE,
    ben_period NUMBER NOT NULL,
    ben_reason VARCHAR2(50) NOT NULL,
    ben_status	NUMBER DEFAULT 1,
    CONSTRAINT pk_ben PRIMARY KEY (ben_number),
    CONSTRAINT fk_ben_user FOREIGN KEY (user_num) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_ben START WITH 1 INCREMENT BY 1 nocache nocycle;

CREATE TABLE tbl_admin (
    admin_number NUMBER,
    admin_id VARCHAR2(20) NOT NULL,
    admin_passwd VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_admin PRIMARY KEY (admin_number)
);
--CREATE SEQUENCE seq_admin START WITH 1 INCREMENT BY 1 nocache nocycle;



--SELECT * FROM tbl_admin;
--SELECT * FROM tbl_user;