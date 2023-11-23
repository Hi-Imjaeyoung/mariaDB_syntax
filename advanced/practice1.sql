-- author,post 데이터 지기
delete author;
delete post;

-- author의 address column 제거
alter table author drop address;

-- author_address 테이블 생성
CREATE TABLE author_address(id INT PRIMARY KEY auto_increment, country VARCHAR(255), city VARCHAR(255),
details varchar(255),zip_code int, phoneNumber varchar(255),
author_id INt not null, FOREIGN KEY(author_id) REFERENCES author(id) UNIQUE(author_id) on delete cascade) ;

-- post author_id column 삭제

-- 테이블 제약 조건 삭제
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'post';
alter table author drop foreign key 계약조건명;

-- index 삭제
show index from post;
alter table author drop index test3_index;

-- post_authors 테이블 생성
CREATE TABLE post_authors(id INT PRIMARY KEY auto_increment, post_id int, FOREIGN KEY(post_id) REFERENCES post(id),
author_id INt, FOREIGN KEY(author_id) REFERENCES author(id)) ;

-- insert test
insert into author(name,email,password,role,age) values('cho','abc@naver.com','123',30);
insert into author_address(country,city,details,zip_code,phoneNumber,author_id) values('ko','suwon','private',1773,'010-9999-9299',201);

insert into post(title,content,price) values('cho stroy','happy',30000);
insert into post_authors(post_id,author_id) values(106,201);

-- author 와 author_address join test
select * from author as a left join author_address as ad on a.id = ad.author_id; 

select * from author as a left join post_authors as ps on a.id = ps.author_id; 

select * from author as a left join post_authors as ps on a.id = ps.author_id left join post as p on ps.post_id = p.id;

-- cascade test
delete from author  where id = '특정 id';