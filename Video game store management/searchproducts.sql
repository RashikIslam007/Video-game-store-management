set serveroutput on;


create or replace procedure searchproduct(pnames in product.pname%TYPE)
as
    cursor c is select * from product where pname = pnames;
begin
    for r in c loop
       dbms_output.put_line( to_char(r.pid)||' ' ||to_char(r.name)|| ' '||to_char(r.price)||' '||to_char(r.stock));
    end loop;
end;
/
