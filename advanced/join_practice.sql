-- 예제1
-- 글 작성한 모든 저자의 이름과 글 제목을 조회
select a.name as name, p.title as title from author as a inner join post as p on p.author_id = a.id;

-- 모든 저자 이름 해당 저자 작성글의 제목 조회 + 나이가 25세 이상
select a.name as name,a.age as age, ifnull(p.title,'no post') as title from author as a left join post as p on p.author_id = a.id where a.age>=25;

-- 예제2 없어진 기록 찾기
SELECT o.ANIMAL_ID as ANIMAL_ID, o.NAME as NAME 
FROM ANIMAL_OUTS as o left join ANIMAL_INS as i 
on o.ANIMAL_ID = i.ANIMAL_ID
where i.ANIMAL_ID is null;
-- inner join으로 풀어보기
-- SELECT FROM out where animal_id not in(out과 in의 inner 조인한 다음 id값)
SELECT ANIMAL_ID,NAME FROM ANIMAL_OUTS as o
where ANIMAL_ID not in(
    select o.ANIMAL_ID from ANIMAL_OUTS as o  inner join ANIMAL_INS as i
    on o.ANIMAL_ID = i.ANIMAL_ID
)
ORDER BY ANIMAL_ID;

-- 예제 3 조건에 맞는 도서 찾기
SELECT b.BOOK_ID, a.AUTHOR_NAME,
DATE_FORMAT(b.PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE FROM BOOK as b
INNER JOIN AUTHOR as a
ON b.AUTHOR_ID = a.AUTHOR_ID
WHERE b.CATEGORY ='경제'
ORDER BY b.PUBLISHED_DATE;