create database case_study;

create table vi_tri(
ma_vi_tri int auto_increment primary key,
ten_vi_tri nvarchar(45)
);

create table trinh_do(
ma_trinh_do int auto_increment primary key,
ten_trinh_do nvarchar(45)
);

create table bo_phan(
ma_bo_phan int auto_increment primary key,
ten_bo_phan nvarchar(45)
);

create table nhan_vien (
ma_nhan_vien int auto_increment primary key,
ho_ten nvarchar(50) not null,
ngay_sinh date not null,
so_cmnd nvarchar(45) not null,
luong double not null,
so_dien_thoai nvarchar(45) not null,
email nvarchar(45),
dia_chi nvarchar(45),
ma_vi_tri int ,
ma_trinh_do int ,
ma_bo_phan int,
foreign key (ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key (ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
);


create table loai_khach(
ma_loai_khach int auto_increment primary key,
ten_loai_khach nvarchar(45)
);

create table khach_hang (
ma_khach_hang int auto_increment primary key,
ma_loai_khach int,
ho_ten nvarchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd nvarchar(45) not null,
so_dien_thoai nvarchar(45) not null,
email nvarchar(45),
dia_chi nvarchar(45),
foreign key (ma_loai_khach) references loai_khach(ma_loai_khach)
);

create table loai_dich_vu (
ma_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu nvarchar(45)
);

create table kieu_thue (
ma_kieu_thue int auto_increment primary key,
ten_kieu_thue nvarchar(45)
);

create table dich_vu (
ma_dich_vu int auto_increment primary key,
ten_dich_vu nvarchar(45) not null,
dien_tich int ,
chi_phi_thue double not null,
so_nguoi_toi_da int ,
ma_kieu_thue int ,
ma_loai_dich_vu int,
tieu_chuan_phong nvarchar(45),
mo_ta_tien_nghi_khac nvarchar(45),
dien_tich_ho_boi double,
so_tang int ,
foreign key (ma_kieu_thue) references kieu_thue(ma_kieu_thue) ,
foreign key (ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

create table hop_dong (
ma_hop_dong int auto_increment primary key,
ngay_lam_hop_dong datetime not null,
ngay_ket_thuc datetime not null,
tien_dat_coc double not null,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key (ma_dich_vu) references dich_vu(ma_dich_vu)
);

create table hop_dong_chi_tiet (
ma_hop_dong_chi_tiet int auto_increment primary key,
so_luong int not null,
ma_hop_dong int ,
ma_dich_vu_di_kem int,
foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

create table dich_vu_di_kem(
ma_dich_vu_di_kem int auto_increment primary key,
ten_dich_vu_di_kem nvarchar(45) not null,
gia double not null,
don_vi nvarchar(45) not null,
trang_thai nvarchar(45)
);

insert into vi_tri(ma_vi_tri, ten_vi_tri) values
(1,"Quản Lý"),
(2,"Nhân Viên");

insert into trinh_do(ma_trinh_do,ten_trinh_do) values
(1,"Trung Cấp"),
(2,"Cao Đẳng"),
(3,"Đại Học"),
(4,"Sau Đại Học");

insert into bo_phan(ma_bo_phan,ten_bo_phan) values
(1,"Sale-Marketing"),
(2,"Hành Chính"),
(3,"Phục Vụ"),
(4,"Quản Lý");

insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan) values
(1,"Nguyễn Văn An","1970-11-07","456231786",10000000,"0901234121","annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
(2,"Lê Văn Bình","1997-04-09","654231234",7000000,"0934212314","binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
(3,"Hồ Thị Yến","1995-12-12","999231723",14000000,"0412352315","thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
(4,"Võ Công Toản","1980-04-04","123231365",17000000,"0374443232","toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
(5,"Nguyễn Bỉnh Phát","1999-12-09","454363232",6000000,"0902341231","phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1),
(6,"Khúc Nguyễn An Nghi","2000-11-08","964542311",7000000,"0978653213","annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",1,2,2),
(7,"Nguyễn Hữu Hà","1993-01-01","534323231",8000000,"0941234553","nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,2,3),
(8,"Nguyễn Hà Đông","1989-09-03","234414123",9000000,"0642123111","donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
(9,"Tòng Hoang","1982-09-03","256781231",6000000,"0245144444","hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
(10,"Nguyễn Công Đạo","1994-01-08","755434343",8000000,"0988767111","nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);

insert into loai_khach(ma_loai_khach,ten_loai_khach) values 
(1,"Diamond"),
(2,"Platinium"),
(3,"Gold"),
(4,"Silver"),
(5,"Member");

insert into khach_hang(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) values
(1,"Nguyễn Thị Hào","1970-11-07",0,"643431213","0945423362","thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
(2,"Phạm Xuân Diệu","1992-08-08",1,"865342123","0954333333","xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị",3),
(3,"Trương Đình Nghệ","1990-02-27",1,"488645199","0373213122","nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh",1),
(4,"Dương Văn Quan","1981-07-08",1,"543432111","0490039241","duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
(5,"Hoàng Trần Nhi Nhi","1995-12-09",0,"795453345","0312345678","nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai",4),
(6,"Tôn Nữ Mộc Châu","2005-12-06",0,"732434215","0988888844","tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng",4),
(7,"Nguyễn Mỹ Kim","1984-04-08",0,"856453123","0912345698","kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh",1),
(8,"Nguyễn Thị Hào","1999-04-08",0,"965656433","0763212345","haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum",3),
(9,"Trần Đại Danh","1994-07-01",1,"432341235","0643343433","danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi",1),
(10,"Nguyễn Tâm Đắc","1989-07-01",1,"344343432","0987654321","dactam@gmail.com","22 Ngô Quyền, Đà Nẵng",2);

insert into kieu_thue(ma_kieu_thue,ten_kieu_thue) values
(1,"year"),
(2,"month"),
(3,"day"),
(4,"hour");

insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu) values 
(1,"Villa"),
(2,"House"),
(3,"Room");

insert into dich_vu(ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,ma_kieu_thue,ma_loai_dich_vu) values
(1,"Villa Beach Front",25000,10000000,10,"Vip","Có hồ bơi",500,4,3,1),
(2,"House Princess 01",14000,5000000,7,"Vip","Có thêm bếp nướng",null,3,3,2),
(3,"Room Twin 01",5000,1000000,2,"Normal","Có tivi",null,null,4,3),
(4,"Villa No Beach Front",22000,9000000,8,"Normal","Có hồ bơi",300,3,3,1),
(5,"House Princess 02",10000,4000000,5,"Normal","Có thêm bếp nướng",null,2,3,2),
(6,"Room Twin 02",3000,900000,2,"Normal","Có tivi",null,null,4,3);

insert into dich_vu_di_kem(ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai) values
(1,"Karaoke",10000,"Giờ","Tiện nghi,hiện đại"),
(2,"Thuê xe máy",10000,"Chiếc","Hỏng 1 chiếc"),
(3,"Thuê xe đạp",20000,"Chiếc","Tốt"),
(4,"Buffet buổi sáng",15000,"Suất","Đầy đủ đồ ăn, tráng miêng"),
(5,"Buffet buổi trưa",90000,"Suất","Đầy đủ đồ ăn, tráng miêng"),
(6,"Buffet buổi tối",16000,"Suất","Đầy đủ đồ ăn, tráng miêng");

insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu) values
(1,"2020-12-08","2020-12-08",0,3,1,3),
(2,"2020-07-14","2020-07-21",200000,7,3,1),
(3,"2021-03-15","2021-03-17",50000,3,4,2),
(4,"2021-01-14","2021-01-18",100000,7,5,5),
(5,"2021-07-14","2021-07-15",0,7,2,6),
(6,"2021-06-01","2021-06-03",0,7,7,6),
(7,"2021-09-02","2021-09-05",100000,7,4,4),
(8,"2021-06-17","2021-06-18",150000,3,4,1),
(9,"2020-11-19","2020-11-19",0,3,4,3),
(10,"2021-04-12","2021-04-14",0,10,3,5),
(11,"2021-04-25","2021-04-25",0,2,2,1),
(12,"2021-05-25","2021-05-27",0,7,10,1);

insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,so_luong,ma_hop_dong,ma_dich_vu_di_kem) values 
(1,5,2,4),
(2,8,2,5),
(3,15,2,6),
(4,1,3,1),
(5,11,3,2),
(6,1,1,3),
(7,2,1,2),
(8,2,12,2);

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * 
from nhan_vien
where ho_ten like "H%" or ho_ten like "T%" or ho_ten like "K%" and length(ho_ten) <= 15;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * 
from khach_hang
where (dia_chi like "%Quảng Trị" or dia_chi like "%Đà Nẵng") and year(current_date()) - year(ngay_sinh) between 18 and 50;

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khach_hang.ho_ten, count(hop_dong.ma_hop_dong) as so_lan_dat_phong 
from khach_hang
inner join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
inner join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach 
where loai_khach.ten_loai_khach = "Diamond"
group by khach_hang.ma_khach_hang order by so_lan_dat_phong;

-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select khach_hang.ma_khach_hang , khach_hang.ho_ten, loai_khach.ten_loai_khach, hop_dong.ma_hop_dong, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc, dich_vu.ten_dich_vu, 
sum(dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia) as TongTien 
from khach_hang
left join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
left join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
left join dich_vu on dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
left join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
left join dich_vu_di_kem on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
group by khach_hang.ma_khach_hang,hop_dong.ma_hop_dong;

-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu,dich_vu.dien_tich,dich_vu.chi_phi_thue,loai_dich_vu.ten_loai_dich_vu
from dich_vu
inner join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where not exists(select hop_dong.ma_dich_vu from hop_dong where(hop_dong.ngay_lam_hop_dong between "2021-01-01" and "2021-03-31") and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu);

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue,loai_dich_vu.ten_loai_dich_vu
from dich_vu
inner join loai_dich_vu on loai_dich_vu.ma_loai_dich_vu = dich_vu.ma_loai_dich_vu
where exists(select hop_dong.ma_hop_dong from hop_dong where year (hop_dong.ngay_lam_hop_dong)= "2020" and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu)
and not exists(select hop_dong.ma_hop_dong from hop_dong where year (hop_dong.ngay_lam_hop_dong)= "2021" and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu);

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Cách 1 : 
select distinct khach_hang.ho_ten 
from khach_hang;
-- Cách 2: 
select khach_hang.ho_ten 
from khach_hang
group by khach_hang.ho_ten;
-- Cách 3: 
select khach_hang.ho_ten 
from khach_hang 
union
select khach_hang.ho_ten 
from khach_hang;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
SELECT 
    MONTH(ngay_lam_hop_dong) AS Thang, 
    COUNT(DISTINCT ma_khach_hang) AS SoLuongKhachHang
FROM 
    hop_dong
WHERE 
    YEAR(ngay_lam_hop_dong) = 2021
GROUP BY 
    Thang;
    
-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select hop_dong.ma_hop_dong,hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc,hop_dong.tien_dat_coc,count(hop_dong_chi_tiet.ma_dich_vu_di_kem) as so_luong_dich_vu_kem
from hop_dong 
inner join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
group by hop_dong.ma_hop_dong;

-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dich_vu_di_kem.ten_dich_vu_di_kem, dich_vu_di_kem.gia, dich_vu_di_kem.don_vi 
from hop_dong 
inner join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
inner join dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
inner join khach_hang on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
inner join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
where loai_khach.ten_loai_khach = "Diamond" and (khach_hang.dia_chi like "%Vinh" or khach_hang.dia_chi like "%Quảng Ngãi");

-- 12. 
SELECT 
    hop_dong.ma_hop_dong,
    nhan_vien.ho_ten AS ho_ten_nv,
    khach_hang.ho_ten AS ho_ten_kh,
    khach_hang.so_dien_thoai,
    dich_vu.ten_dich_vu,
    SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem,
    hop_dong.tien_dat_coc
FROM 
    hop_dong 
JOIN 
    nhan_vien  ON hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
JOIN 
    khach_hang  ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
JOIN 
    hop_dong_chi_tiet  ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
JOIN 
    dich_vu_di_kem  ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
WHERE 
    hop_dong.ngay_lam_hop_dong BETWEEN '2020-10-01' AND '2020-12-31'
    AND hop_dong.ma_hop_dong NOT IN (
        SELECT ma_hop_dong
        FROM hop_dong
        WHERE ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-06-30'
    )
GROUP BY 
    hop_dong.ma_hop_dong,
    ho_ten_nv,
    ho_ten_kh,
    khach_hang.so_dien_thoai,
    dich_vu_di_kem.ten_dich_vu_di_kem,
    hop_dong.tien_dat_coc;
    
-- 13 
SELECT 
    DV.ten_dich_vu_di_kem,
    COUNT(*) AS so_lan_su_dung
FROM 
    hop_dong_chi_tiet HDCT
JOIN 
    dich_vu_di_kem DV ON HDCT.ma_dich_vu_di_kem = DV.ma_dich_vu_di_kem
JOIN 
    hop_dong HD ON HDCT.ma_hop_dong = HD.ma_hop_dong
GROUP BY 
    DV.ten_dich_vu_di_kem
ORDER BY 

-- 14.
    COUNT(*) DESC;
    SELECT 
    HD.ma_hop_dong,
    LDV.ten_loai_dich_vu,
    DV.ten_dich_vu_di_kem,
    COUNT(HDCT.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM 
    hop_dong_chi_tiet HDCT
JOIN 
    dich_vu_di_kem DV ON HDCT.ma_dich_vu_di_kem = DV.ma_dich_vu_di_kem
JOIN 
    dich_vu DVU ON DV.ma_dich_vu = DVU.ma_dich_vu
JOIN 
    loai_dich_vu LDV ON DVU.ma_loai_dich_vu = LDV.ma_loai_dich_vu
JOIN 
    hop_dong HD ON HDCT.ma_hop_dong = HD.ma_hop_dong
GROUP BY 
    HD.ma_hop_dong,
    LDV.ten_loai_dich_vu,
    DV.ten_dich_vu_di_kem
HAVING 
    so_lan_su_dung = 1;

-- 15.
SELECT 
    NV.ma_nhan_vien,
    NV.ho_ten,
    TD.ten_trinh_do,
    BP.ten_bo_phan,
    NV.so_dien_thoai,
    NV.dia_chi
FROM 
    nhan_vien NV
JOIN 
    trinh_do TD ON NV.ma_trinh_do = TD.ma_trinh_do
JOIN 
    bo_phan BP ON NV.ma_bo_phan = BP.ma_bo_phan
WHERE 
    NV.ma_nhan_vien IN (
        SELECT 
            HD.ma_nhan_vien
        FROM 
            hop_dong HD
        WHERE 
            HD.ngay_lam_hop_dong BETWEEN '2020-01-01' AND '2021-12-31'
        GROUP BY 
            HD.ma_nhan_vien
        HAVING
