CREATE DATABASE DemoApp
USE DemoApp
CREATE TABLE Users(
 Id int PRIMARY KEY IDENTITY(1,1),
 Name nvarchar(50) NOT NULL,
 Surname nvarchar(50) NOT NULL,
 Email nvarchar(70) UNIQUE,
 RegistrationDate DateTime CHECK(RegistrationDate<=GetDate()) DEFAULT(GetDate()),
 ContactNumber nvarchar(60) DEFAULT('+994000000000'),
 Age int CHECK(Age>18),
 Adress nvarchar(100)
 )
DROP TABLE Categories
 SELECT*FROM Users
 INSERT INTO Users(Name,Surname,Email,ContactNumber,Age,Adress)
 VALUES('Faiq','Resulzade','fFaigbr@code.edu.az','1234567890',20,'Baku')


 SELECT*FROM Categories
CREATE TABLE Categories(
Id int PRIMARY KEY identity(1,1),
Name nvarchar(50) NOT NULL,
Slug nvarchar(50) UNIQUE,
CreatedAt datetime	CHECK(CreatedAt<=GetDate()) DEFAULT(GetDate()),
 IsActive nvarchar(50),
)
INSERT INTO Categories
VALUES('categories','slugg','11.10.2021','bool')
SELECT Name,Surname,Email FROM Users
SELECT Name,IsActive FROM Categories