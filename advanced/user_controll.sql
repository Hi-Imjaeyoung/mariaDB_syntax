-- 신규 사용자 계정 생성
CREATE USER 'id' @'localhost' IDENTIYFIED BY 'testpw';
-- 사용자 목록 조회
SELECT * FROM mysql.user;
-- 권한 조회
SHOW GRANTS FOR 'root'@'localhost'; 
-- 특정 DB 테이블에 특정권한 부여\
GRANT SELECT ON board.author TO 'testuser'@'localhost';
-- 특정 DB에 특정 권한 뺐기
REVOKE SELECT ON board.author from 'testuser'@'localhost';
-- 권한 변경사항 적용!
FLUSH PRIVILEGES;
-- 특정 사용자 권한 조회
SHOW GRANTS FOR 'testuser'@'localhost';
-- 유저삭제
DROP USER 'testuser'@'localhost';

-- view
CREATE VIEW 뷰네임 AS SELECT 칼럼1, 칼럼2... FROM 테이블명;
-- view 열람 권한 주기
GRANT SELECT ON [데이터베이스 이름].[뷰 이름] TO 'testuser'@'localhost';

