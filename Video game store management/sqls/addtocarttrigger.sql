set serveroutput on;
create or replace trigger trigger_cart
after insert on cart
for each row
begin
	dbms_output.put_line('products have been added to  cart');
end;
/