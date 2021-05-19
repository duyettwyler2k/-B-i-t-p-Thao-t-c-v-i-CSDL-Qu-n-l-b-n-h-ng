create database Quanlysinhvien2;
use Quanlysinhvien2;
create table Customer(
cID int not null primary key,
name varchar(25),
cAge tinyint
);
insert into Customer
values(1,'Minh Quan',10);
insert into Customer
values(2,'Ngoc Anh',20);
insert into Customer
values(3,'Hong Ha',50);
create table Orders(
oID int primary key,
cID int,
date datetime,
totalPrice int null,
foreign key(cID) references Customer(cID)
);
insert into Orders
values(1,1,'2006/3/21',null);
insert into Orders
values(2,2,'2006/3/23',null);
insert into Orders
values(3,1,'2006/3/16',null);
create table Product(
pID int primary key,
pName varchar(25),
pPrice int
);
insert into Product
values(1,'may giat',3);
insert into Product
values(2,'tu lanh',5);
insert into Product
values(3,'dieu hoa',7);
insert into Product
values(4,'quat',1);
insert into Product
values(5,'bep dien',2);
create table orderdetail(
oID int,
foreign key(oID) references Orders(oID),
pID int,
foreign key(pID) references Product(pID),
odQTY int

);
insert into orderdetail
values(1,1,3);
insert into orderdetail
values(1,3,7);
insert into orderdetail
values(1,4,2);
insert into orderdetail
values(2,1,1);
insert into orderdetail
values(3,1,8);
insert into orderdetail
values(2,5,4);
insert into orderdetail
values(2,2,3);

select oID,date,totalPrice
from Orders;


