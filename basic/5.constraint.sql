--  auto_increment 설정 하기
alter table post modfiy column id int auto_increment

-- unique 설정하기
-- 방법 1
alter table author modfiy column email varchar(255) unique;
-- 방법 2
alter table author add constraint author_unique unique(email);

-- 제거 (하나만 해도 둘다 지워짐 유니크만 둘다 같이 삭제된다)
-- 방법 1. 인덱스 제거
show index from author;
alter table author drop index 인덱스명;
-- 방법 2. 계약조건 제거
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'author';
alter table author drop constraint 계약조건명;
-- (fk제거)
alter table author drop foreign key 계약조건명;

CREATE table 테이블이름(
    ....
    필드이름,필드타입
    ....
    [constraint 제약조건이름]
    FOREIGN KEY(필드이름)
    REFERENCES 테이블이름 (필드이름)[on delet/update cascade]
);

--FK 제약조건 변경
alter table post add constraint foreign key(author_id)references author(id) on delete set null on update set null;

