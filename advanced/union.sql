-- A 테이블의 조회결과 UNION 
SELECT 컬럼1, 컬럼2 FROM TABLE1 UNION[ALL] SELECT 컬럼1, 컬럼2 FROM TABLE2;

-- author 에서 Name email과
-- post에 title과 content를 유니온
select name,email from author union select title,content from post; 
select name,email from author union all select title,content from post; 