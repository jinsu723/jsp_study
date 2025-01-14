SELECT * FROM tbl_member;

SELECT	member_name
FROM	tbl_member
;

INSERT INTO tbl_member
values(seq_member.nextval, '길진수');

UPDATE	tbl_member
SET 	member_id = 2
WHERE 	member_id = 21
;

DELETE FROM tbl_member;

DROP TABLE tbl_member;