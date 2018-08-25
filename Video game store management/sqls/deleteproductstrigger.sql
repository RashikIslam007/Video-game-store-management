set serveroutput on;
create or replace trigger del_pro_trig
after delete on product
for each row
begin
	dbms_output.put_line('Product have been removed from inventory');
end;
/