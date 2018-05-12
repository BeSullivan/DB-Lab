create role student;
create role teacher;
create role manager;

grant select on student1 to student;
grant update (s_addr, s_tele) on student1 to student;
grant select on course to teacher;
grant all on student1, teacher to manager;

create user dummystudent;
grant student to dummystudent;

create user dummyteacher;
grant teacher to dummyteacher;

create user dummymanager;
grant manager to dummymanager;

create extension pgcrypto;

revoke update (password) on member from manager;