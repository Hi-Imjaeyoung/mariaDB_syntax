-- 덤프 넣기
mysqldump -u root -p --default-character-set=utf8mb4 board > dumpfile.sql
-- 덤푸 설치
mysql -u [username] -p [new_database_name] < dumpfile.sql;