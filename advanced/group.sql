-- 행의 수 세기
select count(*) from post;
select count(price) from post;

-- group 
select 컬럼명 from 테이블명 group by 컬럼명;
-- author id 별 count 값
select author_id, count(*) from post group by author_id;
-- authior_id 별 price의 sum,avg
select author_id, sum(price) from post group by author_id;
select author_id, round(avg(price),0) from post group by author_id;

-- author_id별로 price 평균값을 구하시오. 단 건별로 150원 이상인 데이터로만 출력
select author_id, avg(price) from post where price>=150 group by author_id;
--  author_id 별로 price 평균값을 구하되 평균값이 150원 이상건만 출력
select author_id, avg(price) from post group by author_id having avg(price)>=150;
-- 합치면..?
select author_id, avg(price) from post where price>=150 group by author_id having avg(price)>=150;

-- avg(구하고 싶은 컬럼명)
-- 같이 null이면 연산하지 않는다.
select avg(price) from post price;
select round(avg(price),0) from post price:
-- min
select min(price) from post price;
-- max
select max(price) from post price;
-- sum
select sum(price) from post price;

-- 09 > 9  cast 아니면 hour 함수 사용
SELECT cast(DATE_FORMAT(DATETIME,'%H') as unsigned) as HOUR, count(*) as COUNT FROM ANIMAL_OUTS 
WHERE DATE_FORMAT(DATETIME,'%H:%i') between '09:00' and '19:59' 
GROUP BY HOUR 
ORDER BY HOUR
;

-- 예제 성분으로 구분한 아이스크림 총 주문량
SELECT INGREDIENT_TYPE, sum(TOTAL_ORDER) as TOTAL_ORDER
FROM FIRST_HALF as f INNER JOIN ICECREAM_INFO as i
ON f.FLAVOR = i.FLAVOR
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER;

-- 예제 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
SELECT CAR_TYPE, count(CAR_TYPE) as CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS like '%통풍시트%'
OR OPTIONS like '%열선시트%'
OR OPTIONS like '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
;

-- 재구매가 일어난 상품과 회원 리스트 구하기
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID,PRODUCT_ID
HAVING count(*) >=2
ORDER BY USER_ID, PRODUCT_ID desc
;