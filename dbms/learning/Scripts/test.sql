SELECT	user_id
	  , user_nickname
	  , ben_reason
	  , ben_start_date
	  , (ben_start_date + ben_period) ben_end_date
	  , ben_period
FROM	tbl_user u
JOIN	tbl_ben b
ON		u.user_number = b.user_num
order by ben_number DESC

SELECT	count(*)
FROM	TBL_BEN
;


SELECT * FROM tbl_admin;

INSERT INTO tbl_admin (admin_number, admin_id, admin_passwd)
VALUES (seq_admin.NEXTVAL, 'admin', 'admin123');


SELECT * FROM tbl_user;
SELECT * FROM tbl_ben;

SELECT * FROM tbl_user WHERE user_number = '1';

select user_id, user_nickname, ben_reason, ben_start_date, (ben_start_date + ben_period) ben_end_date, ben_period, u.user_ben_cnt
from tbl_user u join tbl_ben b
on u.user_number = b.user_num
order by ben_number DESC
;

UPDATE tbl_user
SET user_ben_cnt = user_ben_cnt + 1
WHERE user_number = 1;

INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 1, sysdate, 1, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 2, sysdate, 4, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 3, sysdate, 9, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 4, sysdate, 2, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 5, sysdate, 4, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 6, sysdate, 7, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 7, sysdate, 2, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 8, sysdate, 5, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 9, sysdate, 1, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 11, sysdate, 3, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 12, sysdate, 10, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 13, sysdate, 6, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 14, sysdate, 4, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 15, sysdate, 7, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 17, sysdate, 8, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 17, '2025-01-22', 1, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 17, to_date('2025-01-22 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, '욕설');
INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 18, to_date('2025-01-22 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, '욕설');

SELECT * FROM tbl_user;


DELETE FROM tbl_ben
WHERE ben_start_date <= sysdate+10;

select count(*) as bendedUsers
		from tbl_ben;
		
	SELECT * FROM tbl_ben;
select user_id, user_nickname, ben_reason, ben_start_date, (ben_start_date + ben_period) ben_end_date, ben_period
from tbl_user u join tbl_ben b
on u.user_number = b.user_num
order by ben_number DESC
;

		select forum_number, forum_catergory, forum_title, forum_date, user_nickname, user_tier
		from tbl_forum f
		join (select user_number, user_nickname, user_tier
			  from tbl_user) u
		on f.user_nickname = u.user_nickname;

