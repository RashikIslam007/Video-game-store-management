

clear screen;

DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE ADMINTABLE CASCADE CONSTRAINTS;
DROP TABLE SALESRECORD CASCADE CONSTRAINTS;
drop table cart cascade constraints;

CREATE TABLE PRODUCT (
	pid int, 
	price number,
	brand varchar2(10),
	category varchar2(10),
	stock number, 
	pname varchar2(50),
        PRIMARY KEY(pid)); 



CREATE TABLE CUSTOMER(
	cid int, 
	cname varchar2(30), 
	phone varchar2(20),
	PRIMARY KEY(cid));



CREATE TABLE SALESRECORD (
	--saleid int, 
	sdate TIMESTAMP default LOCALTIMESTAMP, 
	cid int,
	pid int,
	quantity number,
	--PRIMARY KEY(saleid),
	FOREIGN KEY(cid) REFERENCES CUSTOMER(cid),
	FOREIGN KEY(pid) REFERENCES PRODUCT(pid));


 
CREATE TABLE ADMINTABLE(
	adminid int,
	name varchar2(30),
	password varchar2(10)
	);

create table cart(
pid int, 
cid int, 
quantity number,
FOREIGN KEY(cid) REFERENCES CUSTOMER(cid),
	FOREIGN KEY(pid) REFERENCES PRODUCT(pid ));


insert into product (pid, brand, pname,category, price, stock) values (1, 'Sony', 'Playstation 4','console', 350, 50); 
insert into product (pid, brand, pname,category, price, stock) values (2, 'Sony', 'Playstation 4 slim', 'console',300, 50); 
insert into product (pid, brand, pname,category, price, stock) values (3, 'Sony', 'Playstation 4 Pro', 'console',450, 50);   
insert into product (pid, brand, pname,category, price, stock) values (5, 'Sony', 'PS4 Assasins Creed Origins','game', 50, 50); 
insert into product (pid, brand, pname,category, price, stock) values (6, 'Sony', 'EA Sports FIFA 18','game', 50, 50); 
insert into product (pid, brand, pname,category, price, stock) values (7, 'MS', 'XBox One S','console', 50, 350); 
insert into product (pid, brand, pname,category, price, stock) values (8, 'MS', 'XBox One X','console', 50, 500); 

 
insert into customer(cid,cname,phone) values(1, 'Hafizul Islam Himel', '01768532168');
insert into customer(cid,cname,phone) values(2, 'Nafis Islam', '0181923314');


insert into admintable(adminid,name,password) values(1, 'sefat', '1234');




commit;

