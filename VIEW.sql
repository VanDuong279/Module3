create database demo;
create table product (
id int auto_increment primary key,
productCode int not null,
productName nvarchar(225) not null,
productPrice int ,
productAmount int ,
productDescription nvarchar(225),
productStatus nvarchar(20)
);

insert into product(id,productCode,productName,productPrice,productAmount,productDescription,productStatus) values
(1,111,"Bot giat",15000, 4 ,"Bột giặt da dụng","Còn"),
(2,112,"Nước rửa chén",15000, 4 ,"Nước rửa chén da dụng","Còn"),
(3,113,"Dàu ăn",30000, 4 ,"Dầu ăn","Còn");

create unique index index_productCode on product(productCode);
create index index_Name_and_Price on product(productName,productPrice);

explain select *
from product
where productCode = 111;

create or replace view products
as 
	select productCode, productName, productPrice, productStatus
    from product;
    
select * from products;

update products 
set productName = "Bánh mì"
where productCode = 111;

drop view products;

DELIMITER $$ 
	create procedure select_product()
    begin 
		select * from product;
	end $$
DELIMITER ;

call select_product();
DELIMITER $$ 
	DROP PROCEDURE IF EXISTS `add_product()` $$
	create procedure add_product()
    begin 
		insert into product(id,productCode,productName,productPrice,productAmount,productDescription,productStatus) 
        values (4,114,"Chanh",2000,3,"Chanh sạch","Còn");
	end $$
DELIMITER ;
call add_product();

DELIMITER $$ 
	DROP PROCEDURE IF EXISTS `update_product()` $$
	create procedure update_product()
    begin 
		update product 
        set productName = "Phở"
        where id = 1;
	end $$
DELIMITER ;

call update_product();

DELIMITER $$ 
	DROP PROCEDURE IF EXISTS `delete_product()` $$
	create procedure delete_product(in productId int)
    begin 
		delete 
        from product 
        where id = productId;
	end $$
DELIMITER ;
call delete_product(1);