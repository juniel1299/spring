-- spring

create table tblAddress (
    seq number primary key,
    name varchar2(30) not null,
    age number not null,
    address varchar2(100) not null,
    gender char(1) not null
);

drop sequence seqAddress;
create sequence seqAddress;

insert into tblAddress values (seqAddress.nextVal, '홍길동', 20, '서울시', 'm');

delete from tblAddress where seq < 9;

select * from tblAddress;

commit;

