set serveroutput on;


create or replace procedure searchcustomer(phones in customer.phone%TYPE)
as
    cursor c is select * from customer where phone = phones;
begin
    for r in c loop
       dbms_output.put_line( to_char(r.cid)||' ' ||to_char(r.cname)|| ' '||to_char(r.phone));
    end loop;
end;
/