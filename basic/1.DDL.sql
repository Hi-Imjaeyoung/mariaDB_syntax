-- 데이터베이스 생성
CREATE DATABASE board;
-- 데이터베이스 선택
USE board;

-- author 테이블 신규 생성, 기본값은 null을 인정, pk는 뒤에 혹은 컬럼 옆에 선언가능
CREATE TABLE author(id INT,name VARCHAR(255),
email VARCHAR(255),password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY(id));

-- 테이블 목록 조회
SHOW TABLES;
-- 테이블 컴럼 정보 상세조회
SHOW FULL COLUMNS FROM author;
-- 테이블 컬럼 조회
DESCRIBE author; 

-- post 테이블 신규 생성
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255),
author_id INt, FOREIGN KEY(author_id) REFERENCES author(id));

-- 테이블 생성문 조회
SHOW CREATE TABLE posts;

-- 테이블 제약조건 조회 // 다른 schema에서 가져옴
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'posts'

-- 테이블 인덱스 조회 (인덱스는 조회를 빠르게 하기 위해 만듬)
SHOW INDEX FROM posts;

-- ALTER문
-- 테이블 이름 변경
ALTER TABLE posts RENAME post;
-- 테이블 컬럼 추가
ALTER TABLE post ADD COLUMN role VARCHAR(50);
-- 테이블 필드 타입 변경
ALTER TABLE post MODIFY COLUMN name VARCHAR(100) NOT NULL;
-- 컬럼 이름 변경
ALTER TABLE post CHANGE COLUMN content contents VARCHAR(250);
-- 컬럼 삭제
ALTER TABLE post DROP COLUMN test1;
-- 외래키 추가
ALTER TABLE post ADD FOREIGN KEY(name) REFERENCES author(name);  

-- Drop
DROP DATABASE 데이터베이스명;

DROP DATABASE if exists 데이터베이스명;