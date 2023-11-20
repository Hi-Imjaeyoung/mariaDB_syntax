-- 컨트롤 + 쉬프트 +엔터 workspace 한번에 실행.

-- 예제
-- 임의의 데이터 5개 채우기
INSERT INTO author(id,name,email) values('2','cho','cho@naver.com');
INSERT INTO author(id,name,email) values('3','im','im@naver.com');
INSERT INTO author(id,name,email) values('4','park','park@naver.com');
INSERT INTO author(id,name,email) values('5','jung','jung@naver.com');
INSERT INTO author(id,name,email) values('6','kang','kang@naver.com');

-- 예제2
-- 저자가 있는 2개 데이터
insert into post(id,title,author_id) values('1','a','1');
insert into post(id,title,author_id) values('2','b','4');
insert into post(id,title,author_id) values('3','c','1');
-- 저자가 없는 2개 데이터
insert into post(id,title,contents) values('4','b','comedy');
insert into post(id,title,contents) values('5','b','SF');

-- 에러확인
-- fk가 Pk에 없다.
insert into post(id,title,author_id) values('6','b','10');

-- 예제3
-- author 데이터 중 id 가 4인 데이터 email과 name을 변경
update author set name='abc', email='abc@naver.com' where id=4;
-- post에 글쓴적이 없는 author 데이터 삭제
delete from author where id = 1;
-- post에 글쓴적이 있는 author 데이터 삭제 >조치 후

-- 방법 1. post에 해당 author post를 삭제 후 삭제 
delete from post where id = 1;
delete from author where id = 1;

-- 방법 2. post를 update 후 삭제 
update post set author_id = null where id =1;

-- 예제4
INSERT INTO author(id,name,email) values('1','cho','cho@naver.com');
INSERT INTO author(id,name,email) values('2','kim','kim@naver.com');
INSERT INTO author(id,name,email) values('3','park','park@naver.com');
INSERT INTO author(id,name,email) values('4','jang','jang@naver.com');
INSERT INTO author(id,name,email) values('5','jun','jun@naver.com');
insert into post(id,title,author_id) values('1','a','1');
insert into post(id,title,author_id) values('2','a2','1');
insert into post(id,title,author_id) values('3','b','2');
insert into post(id,title) values('4','c');
insert into post(id,title) values('5','d');

--예제 5. 프로그램어스 조건에 맞는 도서 풀이
--방법 1 date_fromat을 사용
SELECT BOOK_ID,DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from BOOK where CATEGORY = '인문'
&& date_format(PUBLISHED_DATE,'%Y') = '2021'
ORDER by PUBLISHED_DATE;
--방법 2 like 를 사용
SELECT BOOK_ID,DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from BOOK where CATEGORY = '인문'
&& PUBLISHED_DATE like '2021%'
ORDER by PUBLISHED_DATE;
--방법 3 between을 사용
SELECT BOOK_ID,DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from BOOK where CATEGORY = '인문'
&& (PUBLISHED_DATE between '2021-01-01' and '2021-12-31')
ORDER by PUBLISHED_DATE;

-- now()를 활용하여 오늘 날짜 생성 파일 출력하기
select * from post where created_time like = '2023-11-22%';
select * from post where date_format(created_time,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d');

-- FK인 author id를 on update cascade 옵션으로 바꾸고 확인
alter table post add constraint foreign key(author_id)references author(id) on update cascade;
show index from post;
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'post';
select * from post;
insert into post(id,title,author_id) values(10,'r',11);
update author set id = 50 where id =11;
select * from author;
select * from post;
