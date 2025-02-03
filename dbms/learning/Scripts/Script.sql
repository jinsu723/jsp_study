BEGIN
   DBMS_SCHEDULER.create_job (
      job_name        => 'delete_old_data_job',  -- 작업 이름
      job_type        => 'PLSQL_BLOCK',          -- 작업 유형
      job_action      => 'BEGIN DELETE FROM tbl_ben WHERE (ben_start_date+ben_period) <= SYSDATE; END;', -- DML 작업
      start_date      =>  TO_DATE('2025-01-23 10:00', 'YYYY-MM-DD HH24:MI'), -- 지정한 시간부터 시작
      repeat_interval => 'FREQ=HOURLY', -- 1시간 마다 수행
      enabled         =>  TRUE -- 작업 활성화
   );
END;

--job_name: 작업의 이름을 지정합니다. 여기서는 delete_old_data_job으로 설정했습니다.
--job_type: 작업 유형을 PLSQL_BLOCK으로 설정하여 PL/SQL 블록을 실행하도록 합니다.
--job_action: 실행할 PL/SQL 블록을 정의합니다. 여기서는 DELETE 문을 사용하여 date_column의 값이 오늘 날짜(SYSDATE)와 동일한 데이터를 삭제합니다. TRUNC() 함수는 시간을 제거하고 날짜만 비교합니다.
--start_date: 작업이 시작될 날짜와 시간을 설정합니다. TRUNC(SYSDATE) + INTERVAL '1' DAY는 자정부터 시작하도록 설정합니다.
--repeat_interval: FREQ=DAILY; INTERVAL=1로 설정하여 매일 실행되도록 설정합니다.
--enabled: TRUE로 설정하여 작업이 활성화되도록 설정합니다.
--
---- 작업 확인
SELECT job_name, state, last_start_date, next_run_date
FROM dba_scheduler_jobs
WHERE job_name = 'DELETE_OLD_DATA_JOB';
--
----작업 비활성화
--BEGIN
--   DBMS_SCHEDULER.disable('delete_old_data_job');
--END;
--

SELECT * FROM tbl_user WHERE user_nickname like '%탑%';
--
작업 삭제
BEGIN
   DBMS_SCHEDULER.drop_job('delete_old_data_job');
END;

select * FROM tbl_ben;
select * FROM tbl_ben WHERE BEN_START_DATE+BEN_PERIOD < SYSDATE;
DELETE FROM tbl_ben WHERE (ben_start_date+ben_period) <= SYSDATE;


SELECT * FROM tbl_forum;

		SELECT f.forum_number,
		f.forum_category, f.forum_title, f.forum_date,
		u.user_nickname,
		u.user_tier
		FROM tbl_forum f INNER JOIN tbl_user u
		ON f.user_number =
		u.user_number
		WHERE f.forum_category LIKE '%모집%'
		order by f.forum_number DESC;
		
	DELETE FROM tbl_forum
	WHERE forum_category = '모집' AND forum_number = 51;
	
SELECT * FROM tbl_forum;

SELECT COUNT(FORUM_CATEGORY) count FROM TBL_FORUM WHERE FORUM_CATEGORY = '자유';

SELECT * FROM tbl_user;