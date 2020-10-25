create user C##DBTEST identified by dbgood
default tablespace users
temporary tablespace temp;

grant connect, resource to C##DBTEST;

alter user C##DBTEST default tablespace users quota unlimited on users;