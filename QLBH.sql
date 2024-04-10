create database quan_ly_ban_hang;

create table Customer(
cID int primary key,
CName nvarchar(225) not null,
cAge int 
);

create table OrderBH(
oID int primary key,
oDate date not null,
oTotalPrice int not null,
cID int,
foreign key (cID) references Customer(cID)
);

create table Product(
pID int primary key,
pName nvarchar(50) not null,
pPrice int not null
);

create table OrderDetail(
oID int,
pID int,
odQTY nvarchar(20) not null,
foreign key (oID) references OrderBH(oID),
foreign key (pID) references Product(pID)
);