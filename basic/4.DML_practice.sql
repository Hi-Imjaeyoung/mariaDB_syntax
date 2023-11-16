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