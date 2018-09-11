use TSQLV4;

drop table if exists presidents;

create table presidents (
lastname varchar(25),
firstname varchar(25),
middlename varchar(25),
datebirth date,
datedeath date,
statebirth varchar(25),
statehome varchar(25),
party varchar(25),
tookoffice date,
leftoffice date,
assampt char(5),
asssucc char(5),
religion varchar (25)
);
select* from presidents;

