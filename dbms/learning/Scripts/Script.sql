CREATE TABLE tbl_user (
    user_number NUMBER,
    user_id VARCHAR2(20) NOT NULL,
    user_passwd VARCHAR2(20) NOT NULL,
    user_nickname VARCHAR2(15) NOT NULL,
    user_tier VARCHAR2(15) NOT NULL,
    user_phone VARCHAR2(15) NOT NULL,
    user_join_date DATE,
    user_ben_ctn NUMBER DEFAULT 0,
    CONSTRAINT pk_user PRIMARY KEY (user_number),
    CONSTRAINT uq_user_id UNIQUE (user_id),
    CONSTRAINT uq_user_nickname UNIQUE (user_nickname),
    CONSTRAINT uq_user_phone UNIQUE (user_phone)
);
CREATE SEQUENCE seq_user START WITH 1 INCREMENT BY 1
nocache  --시퀀스 값을 미리 메모리에 캐싱하지 않도록 설정
nocycle; --최대갑셍 도달하면 재시작하지 않도록 설정

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
CREATE SEQUENCE seq_forum START WITH 1 INCREMENT BY 1 nocache nocycle;

CREATE TABLE tbl_file (
    file_number NUMBER,
    forum_number NUMBER,
    img_source VARCHAR2(200),
    CONSTRAINT pk_file PRIMARY KEY (file_number),
    CONSTRAINT fk_file_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_file START WITH 1 INCREMENT BY 1 nocache nocycle;

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
CREATE SEQUENCE seq_comment START WITH 1 INCREMENT BY 1 nocache nocycle;


CREATE TABLE tbl_party (
    party_number NUMBER,
    forum_number NUMBER,
    user_number NUMBER,
    party_state VARCHAR2(20) DEFAULT '대기중',
    CONSTRAINT pk_party PRIMARY KEY (party_number),
    CONSTRAINT fk_party_forum FOREIGN KEY (forum_number) REFERENCES tbl_forum (forum_number) ON DELETE CASCADE,
    CONSTRAINT fk_party_user FOREIGN KEY (user_number) REFERENCES tbl_user (user_number) ON DELETE CASCADE
);
CREATE SEQUENCE seq_party START WITH 1 INCREMENT BY 1 nocache nocycle;


CREATE TABLE tbl_ben (
    ben_number NUMBER,
    user_num NUMBER,
    ben_start_date DATE,
    ben_period NUMBER NOT NULL,
    ben_reason VARCHAR2(50) NOT NULL,
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
CREATE SEQUENCE seq_admin START WITH 1 INCREMENT BY 1 nocache nocycle;

--SELECT * FROM tbl_user;
--SELECT * FROM tbl_forum;
--SELECT * FROM tbl_file;
--SELECT * FROM tbl_comment;
--SELECT * FROM tbl_party;
--SELECT * FROM tbl_ben;
--SELECT * from tbl_manager;

INSERT INTO tbl_user (user_number, user_id, user_passwd, user_nickname, user_tier, user_phone, user_join_date, user_ben_ctn)
VALUES (seq_user.NEXTVAL, 'alice123', 'pass123', 'Alice', 'gold', '010-1111-2222', SYSDATE, 0);

INSERT INTO tbl_user (user_number, user_id, user_passwd, user_nickname, user_tier, user_phone, user_join_date, user_ben_ctn)
VALUES (seq_user.NEXTVAL, 'bob456', 'pass456', 'Bob', 'silver', '010-3333-4444', SYSDATE, 1);

INSERT INTO tbl_user (user_number, user_id, user_passwd, user_nickname, user_tier, user_phone, user_join_date, user_ben_ctn)
VALUES (seq_user.NEXTVAL, 'char789', 'pass789', 'Char', 'bronze', '010-5555-6666', SYSDATE, 0);


INSERT INTO tbl_forum (forum_number, user_number, forum_category, forum_title, forum_date, forum_update, forum_content)
VALUES (seq_forum.NEXTVAL, 1, '자유', '이게 롤이다', SYSDATE, NULL, '요번 업데이트 미쳤다 이게 롤이지 이게');

INSERT INTO tbl_forum (forum_number, user_number, forum_category, forum_title, forum_date, forum_update, forum_content)
VALUES (seq_forum.NEXTVAL, 2, '공략', '아이템 이게 맞나요?', SYSDATE, NULL, 'ap템으로 가려고 하는데 어떤걸 가야할지 모르겠어요 추천좀여');

INSERT INTO tbl_forum (forum_number, user_number, forum_category, forum_title, forum_date, forum_update, forum_content)
VALUES (seq_forum.NEXTVAL, 3, '파티', '1/3일 5인팟해주실 고인물들 구함', SYSDATE, NULL, '플레 이상만 지원해주세여~ 1/1일까지 받음');


INSERT INTO tbl_file (file_number, forum_number, img_source)
VALUES (seq_file.NEXTVAL, 1, 'image1.png');

INSERT INTO tbl_file (file_number, forum_number, img_source)
VALUES (seq_file.NEXTVAL, 2, 'tips.png');

INSERT INTO tbl_file (file_number, forum_number, img_source)
VALUES (seq_file.NEXTVAL, 3, 'trends.png');


INSERT INTO tbl_comment (comment_number, forum_number, user_number, comment_content, comment_date)
VALUES (seq_comment.NEXTVAL, 1, 2, '대박 ㄷㄷ', SYSDATE);

INSERT INTO tbl_comment (comment_number, forum_number, user_number, comment_content, comment_date)
VALUES (seq_comment.NEXTVAL, 2, 3, '오오', SYSDATE);

INSERT INTO tbl_comment (comment_number, forum_number, user_number, comment_content, comment_date)
VALUES (seq_comment.NEXTVAL, 3, 1, '추추추', SYSDATE);


INSERT INTO tbl_party (party_number, forum_number, user_number, party_state)
VALUES (seq_party.NEXTVAL, 1, 1, '대기중');

INSERT INTO tbl_party (party_number, forum_number, user_number, party_state)
VALUES (seq_party.NEXTVAL, 2, 2, '대기중');

INSERT INTO tbl_party (party_number, forum_number, user_number, party_state)
VALUES (seq_party.NEXTVAL, 3, 3, '승인됨');


INSERT INTO tbl_ben (ben_number, user_num, ben_start_date, ben_period, ben_reason)
VALUES (seq_ben.NEXTVAL, 2, SYSDATE, 30, '욕설');

INSERT INTO tbl_ben (ben_number, user_num, ben_start_date, ben_period, ben_reason)
VALUES (seq_ben.NEXTVAL, 3, SYSDATE, 15, '비방');

INSERT INTO tbl_ben (ben_number, user_num, ben_start_date, ben_period, ben_reason)
VALUES (seq_ben.NEXTVAL, 1, SYSDATE, 7, '선정적인 게시물');


INSERT INTO tbl_admin (admin_number, admin_id, admin_passwd)
VALUES (seq_admin.NEXTVAL, 'admin', 'admin123');

--SELECT * FROM tbl_admin;
--SELECT * FROM tbl_user;