create database student_managerment; 
create table Class (
id int auto_increment primary key,
name nvarchar(50) not null
);

create table Teacher(
id int auto_increment primary key,
name nvarchar(50) not null,
age int ,
country nvarchar(20) 
);

