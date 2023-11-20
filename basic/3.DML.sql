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
select * from author where name REGXP'[a-z]';

-- cast 데이터 타입을 변환
select cast(20200101,DATE) > 2020-01-01

-- convert
convert('2020-01-01', DATE); > 2020-01-01

-- date_format 
select * post from where date_format(created_time, '%Y-%m-%d')

-- 흐름제어문
-- case
case value
when [compare_value1] then result1
when [compare_value1] then result2
else result3;
end

-- 예제
select id, title, content,
case author_id
    when 1 then 'First_author' 
    when 2 then 'second_author' 
    else 'others'
end
as author_type from post;

-- 예제 2
select id, title, content,
case
    when author_id = 1 then 'First_author' 
    when author_id = 2 then 'second_author'
    when author_id is null then 'anonymus' 
    else 'others'
end
as author_type from post;

-- if 예제
-- if문 사용 id가 1이면 first_author 아니면 others
-- id,title,content,authoer_type
select id,title,content, if(author_id = 1,'first_author','others') as author_type from post;  
-- 위에서 동일한 결과가 나오도록 if문으로 구현
select id,title,content, if(author_id is null,'others','first_author') as author_type from post;  