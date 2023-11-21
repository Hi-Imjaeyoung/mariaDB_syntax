-- inner join
select * from author as a inner join post as p on a.id = p.author_id; 
select * from author inner join post on author.id = post.author_id;

-- left outer join (author은 조건에 관계없이 모든 데이터기 나옴!)
select * from author as a left outer join post as p on a.id = p.author_id;

--not null 일떄
select a.*,p.* from author as a inner join post as p on a.id = p.author_id; 

-- where 조건
select * from author as a left outer join post as p on a.id = p.author_id where a.name ='kim'; 