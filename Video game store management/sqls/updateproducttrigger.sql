set serveroutput on;
create or replace trigger update_trigg
after update on product
for each row
begin
	dbms_output.put_line('Products have been edited');
end;
/