--Petsaurus Animal Care
create database PetsaurusDatabase
use PetsaurusDatabase
go
create table [Dental Care]
(
	[Dental Code] integer identity(1,1) primary key,
	Filling varchar(3) not null,
	Filing varchar(3) not null,
	Extraction varchar(3) not null,
	[Gum Treatment] varchar(3) not null,
	Cleaning varchar(3)
);
go
create table [Medical Care] 

(
	[Medical Code] integer identity(1,1) primary key,
	Referral varchar(3) not null,
	Test varchar(3) not null, 
	Nutrition nvarchar(200),
	Vaccination nvarchar(60),
	Examination varchar(3) not null
);
go
create table [Day Care]
(
	[Day Care Code] integer identity(1,1) primary key,
	[Dog-sitting]varchar(3) not null,
	Walking varchar(3) not null,
	Feeding varchar(3) not null,
	[Leashing Pulling] varchar(3) not null,
	Training varchar(3) not null
);
go

create table [Animal Owner]
(
	TRN varchar(20) primary key,
	[Last Name] char(30),
	[First Name] varchar(30),
	Street varchar(30),
	City varchar(20),
	Zip integer,
	[State] varchar(30),
	Country varchar(30),
	Telephone varchar(40),
	[Registration Date] date
);
go
create table [Next of Kin]
(
	NoKID int identity(1,1) primary key,
	TRN varchar(20),
	[Last Name] char(30),
	[First Name] varchar(30),
	Street varchar(30),
	City varchar(20),
	Zip integer,
	[State] varchar(30),
	Country varchar(30),
	Telephone varchar(40),
	foreign key (TRN) references [Animal Owner] (TRN)
);
go
create table Client
(
	[Client Code]
);