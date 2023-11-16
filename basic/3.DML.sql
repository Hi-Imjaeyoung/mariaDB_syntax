-- insert, select, update, delete

-- insert
INSERT INTO author(id,name,email) values('1','kim','as@naver.com');

-- select
select * from author;

select * from author where id = 1;

select name,email from author;

select * from author where id > 1;

select * from author where id = 1 and name = 'park';

-- update
update author set 컬럼 = 데이터(데이터타입주의) where id ="target_Primary key";

-- delet
delet from '테이블 이름' where id = "target_Primary key";