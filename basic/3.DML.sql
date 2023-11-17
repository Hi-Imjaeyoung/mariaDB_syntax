-- insert, select, update, delete

-- insert / 문자열인 경우 '로 감싸주기~
INSERT INTO author(id,name,email) values('1','kim','as@naver.com');

-- select / 기본 옵션이 오름차순 asc
select * from author;

select * from author where id = 1;

select name,email from author;

select * from author where id > 1;

select * from author where id = 1 and name = 'park';

-- 중복되는 값 제거 
select distinct name from author;

-- order by
select * from author order by name desc;
-- 멀티 정렬 : name으로는 오른차순 정렬, email은 역순으로
select * from author order by name, email desc;
-- limit number : number만큼의 행만 보여지게
select * from author order by id desc limit 2;

-- alias를 이용한 select문 (as는 생략이 가능합니다)
select name as 이름 from author;
select name from author as a; -- 테이블 조인이 들어가면 구분하기 쉽게
select a.name as a_name, b.name as b from  author as a +post as b;

-- update 
update author set 컬럼 = 데이터(데이터타입주의) where id ="target_Primary key";
update author set 컬럼 = 데이터(데이터타입주의) where is not null;


-- delet
delet from '테이블 이름' where id = "target_Primary key";

-- add 는 default 설정 시 null값을 그대로 다 바꾸는것이 가능한데
-- modify는 그럴까..? 

-- DATE
alter table post add column created_time datetime(6) default current_timestamp;

-- 비교연산자
-- = 같다 
-- != , <> 다르다
-- < <= > >= 이상 이하 초과 미만
-- IS NULL , NOT NULL
-- and && or || ! not
select * from author where id>=10 && id <=20;
select * from author where id not in(1,2,3);
select * from author where id not (id<3 or id >9);
select * from author where id between 10 and 12;

-- like
select * from author where name LIKE '홍%';
select * from author where name LIKE '%홍%';
select * from author where name LIKE '%홍';

-- regexp

-- cast
-- convert
-- date_format
