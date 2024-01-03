create database Project4WebAPIDb
use Project4WebAPIDb

create table Student
(StudentId int primary key,
RollNo int not null,
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
Gender varchar(50) not null
)
insert into Student values(1,45,'Priya','Thorat','Female')
insert into Student values(2,46,'Shyam','Singh','Male')
insert into Student values(3,47,'Sam','Dicosta','Male')
insert into Student values(4,48,'Riya','Sharma','Female')
insert into Student values(5,49,'Naveen','Garg','Male')



create table Subject(
SubjectId int primary key,
SubjectName nvarchar(50) not null
)
insert into Subject values(100,'Mathematics')
insert into Subject values(101,'History')
insert into Subject values(102,'Social')
insert into Subject values(103,'Chemistry')



create table Marks
(Id int primary key,
StudentId int foreign key references Student(StudentId),
SubjectId int foreign key references Subject(SubjectId),
Marks int not null)

insert into Marks values(400,1,102,96)
insert into Marks values(444,3,100,86)
insert into Marks values(555,4,103,80)
insert into Marks values(500,2,101,90)

select * from Student
select * from Subject
select * from Marks

