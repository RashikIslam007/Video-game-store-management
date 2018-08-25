create or replace procedure addproducts(pida in product.pid%type, branda in product.brand%type,
pnamea in product.pname%type, categorya in product.category%type, pricea in product.price%type, stocka in product.stock%type )
is 
begin
	insert into product (pid, brand, pname,category, price, stock) values (pida, branda, pnamea,categorya, pricea, stocka); 
end;
/

/*
insert into product (pid, brand, pname,category, price, stock) values (1, 'Sony', 'Playstation 4','console', 350, 50); 
CREATE TABLE PRODUCT (
	pid int, 
	price number,
	brand varchar2(10),
	category varchar2(10),
	stock number, 
	pname varchar2(50),
        PRIMARY KEY(pid)); */