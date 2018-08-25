set serveroutput on;
create or replace trigger trigger_product
after insert on product
for each row
begin
	dbms_output.put_line('product added to product table');
end;
/