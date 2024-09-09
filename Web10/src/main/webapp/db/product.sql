-- 테이블 생성
create table product(
  code number(5),
  name varchar2(100),
  price number(8),
  pictureurl varchar(50),
  description varchar(1000),
  primary key (code)
);

-- 시퀀스를 이용해서 자동으로 상품코드 번호를 부여
create sequence product_seq start with 1 increment by 1;

-- 레코드 추가
insert into product values(product_seq.nextval, '개념을 콕콕 잡아주는 데이터베이스', 27000, 'db.jpg', '데이터 베이스에 관한 모든 것을 쉽고 재미있게 정리한 교재...');
insert into product values(product_seq.nextval, '웹표준을 위한 HTML5', 25000, 'html5.jpg', 'HTML5 가이드 북, 홈페이지 제작을 위한 필수 선택 HTML 기본 문법');
insert into product values(product_seq.nextval, 'Dynamic Programming book 시리즈 -오라클 11g+PL/SQL', 25000,'oracle.jpg', 'Dynamic 실무 코칭 프로그래밍의 Book의 첫번재 책으로 11g의 새로운...');
insert into product values(product_seq.nextval, 'Visual C++ MFC 윈도우 프로그래밍', 26000, 'mssql.jpg', 'Visual C++를 처음 시작하는 독자의 눈높이에 맞춘 Visual C++');
insert into product values(product_seq.nextval, 'JQuery and jQuery Mobile: 이해하기 쉽게 풀어 쓴', 25000, 'jquery.jpg', '소스 하나로 데스크탑과 모바일까지 HTML5와 함께 사용한다. 초보자들도...');

-- 저장
commit;

-- 레코드 조회
select * from product;