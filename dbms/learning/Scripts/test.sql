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

INSERT INTO tbl_ben
VALUES(seq_ben.nextval, 1, sysdate, 1, '욕설');

DELETE FROM tbl_ben
WHERE ben_start_date <= sysdate+10;

select count(*) as bendedUsers
		from tbl_ben;
		
select user_id, user_nickname, ben_reason, ben_start_date, (ben_start_date + ben_period) ben_end_date, ben_period
from tbl_user u join tbl_ben b
on u.user_number = b.user_num
order by ben_number DESC
;

