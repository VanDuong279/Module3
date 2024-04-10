create database bai2;

create table PHIEUXUAT (
SoPX int primary key,
NgayXuat date not null
);

create table VATTU (
MaVTU int primary key,
TenVTU nvarchar(50) not null
);

create table PHIEUNHAP(
SoPN int primary key,
NgayNhap date not null
);

create table DONDH (
SoDH int primary key,
NgayDH date not null,
MaNCC int,
foreign key (MaNCC) references NHACC(MaNCC)
);

create table NHACC (
MaNCC int primary key,
TenNCC nvarchar(50) not null,
DiaChi nvarchar(225) not null
);

create table SDT (
SDT int primary key,
MaNCC int ,
foreign key(maNCC) references NHACC(MaNCC)
);

create table CTPX (
SoPX int,
MaVTU int,
DGXuat nvarchar(20),
SLXuat int ,
foreign key (SoPX) references PHIEUXUAT(SoPX),
foreign key (MaVTU) references VATTU(MaVTU)
);

create table CTPN(
MaVTU int, 
SoPN int ,
DGNhap nvarchar(20),
SLNhap int ,
foreign key (MaVTU) references VATTU(MaVTU),
foreign key (SoPN) references PHIEUNHAP(SoPN)
);

create table CTDDH(
MaVTU int,
SoDH int,
foreign key (MaVTU) references VATTU(MaVTU),
foreign key (SoDH) references DONDH(SoDH)
);

create table CUNGCAP (
SoDH int,
MaNCC int,
foreign key (SoDH) references DONDH(SoDH),
foreign key (MaNCC) references NHACC(MaNCC)
);

