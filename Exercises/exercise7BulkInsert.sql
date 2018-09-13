 --Name: Michael Eller
 --File: exercise7BulkInserts.sql
 --Date: 9/15/2018
 
 
 use TSQLV4;

drop table if exists electricRateComparisons;

create table electricRateComparisons (
	zip char(5),
	eiid char(5),
	utility_name varchar(100),
	state char(20),
	service_type char(25),
	ownership char(25),
	comm_rate real,
	ind_rate real,
	res_rate real
);
select * from electricRateComparisons;

--truncate table electricRateComparisons;

bulk insert dbo.electricRateComparisons from 'C:\Users\micha\Desktop\electricRateComparisons.csv'
with(datafiletype = 'char', fieldterminator = ',', firstrow = 2, rowterminator = '\n', format = 'csv', fieldquote = '"');


alter table dbo.electricRateComparisons
add utilityID int not null identity(1,1)
	constraint pk_1 primary key;

alter table dbo.electricRateComparisons
drop column service_type, ownership;
 
 select * from dbo.electricRateComparisons;



--How much does Alabama power make in one hour considering they have at one service agreement for each level of service at all locations?

SELECT distinct eiid, utility_name,
 sum(comm_rate + res_rate + ind_rate) over() as totalsales_with_1_cutomer
FROM dbo.electricRateComparisons Where eiid like 195;


-- What's the difference in profits between Alabama Power and Georgia Power for 1 unit of service in dollars?


SELECT distinct a.utility_name AS utilityname1, b.utility_name AS utilityname2,(select distinct 
sum(comm_rate + res_rate + ind_rate) over(partition by eiid) from dbo.electricRateComparisons where eiid = 195)-(select distinct sum(comm_rate + res_rate + ind_rate) over(partition by eiid) from dbo.electricRateComparisons where eiid = 7140) as differenceincosts
FROM dbo.electricRateComparisons A, dbo.electricRateComparisons B
where A.utility_name = 'Alabama Power Co' and B.utility_name = 'Georgia Power Co';

--How many service providers does NC have?


select count(distinct utility_name) as numberofproviders from dbo.electricRateComparisons where state = 'NC';

-- Which zips have more than 3 service providers?


Select zip, count(distinct utility_name) as totalproviders from dbo.electricRateComparisons group by zip Having count(distinct utility_name) > 3 ;

	
	

