-- 테이블생성
create table member (
  name varchar2(10),
  userid varchar(10),
  pwd varchar(10),
  email varchar2(20),
  phone char(13),
  admin number(1) default 0, -- 0:사용자, 1:관리자
  primary key(userid)
);

​-- 스키마 확인
desc member;
​
-- 레코드 추가
insert into member values('유비', 'yoobi', '1234',  'gmd@naver.com', '010-1111-2222', 0);
insert into member values('관우', 'guanyu', '1234',  'ha12@naver.com', '010-2222-8888', 0);
insert into member values('장비', 'jangbi', '1234',  'youn1004@naver.com', '010-3333-6666', 1);
insert into member values('손오공', 'ogong', '1234',  'youn1004@naver.com', '010-4444-9999', 0);

-- 데이터 조회 select
select * from member;

--영구적으로 저장, 저장하지 않으려면 rollback
commit;  

-- 현재 사용자가 소유한 테이블의 수를 반환
select count(*) from user_tables;

-- 데이터베이스에 있는 모든 테이블에 대한 정보를 조회
select * from all_tables;

-- ADMIN사용자가 소유한 모든 테이블에 대한 정보를 조회
select * from all_tables where owner='ADMIN';

-- 현재 사용자가 소유한 모든 테이블의 이름을 반환
select table_name from user_tables;

-- member테이블에서 userid가 'ogong'인 레코드 조회
select * from member where userid='ogong';

-- 저장된 데이터를 변경  update
update member set phone='010-7650-4321'
where userid='ogong';

-- 테이블에 저장된 레코드 삭제 delete
delete from member where userid='ogong';

-- 정렬  order by(이름 역순 정렬)
select * from member order by name desc; 

-- 이메일로 정렬 ASC 생략가능
select * from member order by email;  ​

-- 테이블에 모든 행을 삭제
delete from member;

--  테이블 삭제 
drop table member;