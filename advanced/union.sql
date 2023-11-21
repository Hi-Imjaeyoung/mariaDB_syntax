-- A 테이블의 조회결과 UNION 
SELECT 컬럼1, 컬럼2 FROM TABLE1 UNION[ALL] SELECT 컬럼1, 컬럼2 FROM TABLE2;

-- author 에서 Name email과
-- post에 title과 content를 유니온
select name,email from author union select title,content from post; 
select name,email from author union all select title,content from post; 

-- 재귀
SELECT 0 as HOUR, 0 as COUNT
UNION select 1,0
UNION select 2,0
UNION select 3,0
UNION select 4,0
UNION select 5,0
UNION select 6,0
UNION select 7,0
UNION select 8,0
UNION select 9,0
UNION select 10,0
UNION select 11,0
UNION select 12,0
UNION select 13,0
UNION select 14,0
UNION select 15,0
UNION select 16,0
UNION select 17,0
UNION select 18,0
UNION select 19,0
UNION select 20,0
UNION select 21,0
UNION select 22,0
UNION select 23,0