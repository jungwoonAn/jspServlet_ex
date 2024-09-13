--테이블 생성
create table board(
    num number(5) primary key,    
    name varchar2(30),
    email varchar2(30),
    pass varchar2(30),
    title varchar2(50),
    content varchar2(1000),
    readcount number(4) default 0,
    writedate date default sysdate
);

--시퀀스를 이용해서 자동으로 글번호 부여
create sequence board_seq start with 1 increment by 1;

--레코드 추가
insert into board(num, name, email, pass, title, content)
values(board_seq.nextval, '안정운', 'ajw@google.com', '1234', '첫방문', '반갑습니다.');

insert into board(num, name, email, pass, title, content)
values(board_seq.nextval, '홍길동', 'city@google.com', '1234', '강원도', '눈이 많이 와요.');

insert into board(num, name, email, pass, title, content)
values(board_seq.nextval, '임꺽정', 'forest@google.com', '3333', '경기도', '숲속공원이요');

insert into board(num, name, email, pass, title, content)
values(board_seq.nextval, '장보고', 'sea@google.com', '1234', '제주도', '바다가 보여요.');

-- 저장
commit;

-- 테이블 조회
select * from board;