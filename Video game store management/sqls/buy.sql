set serveroutput on;
create or replace procedure addtocart(
		pidc in product.pid%TYPE,
		cidc in customer.cid%TYPE,
		quantityc in number)
		IS
begin
		insert into cart (pid , cid, quantity) values (pidc , cidc, quantityc);
		commit;
		dbms_output.put_line('Products have been added to cart');
end addtocart;
/
