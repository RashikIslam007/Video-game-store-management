set serveroutput on;
create or replace procedure checkout(cidc in cart.cid%type)is
cursor c is select pid , cid, quantity from cart where cid = cidc;
qi product.stock%type;
begin
    for r in c loop
		insert into salesrecord (cid, pid, quantity) values (r.pid , r.cid, r.quantity);
		select stock into qi from product where pid = r.pid;
		delete from cart where cid = cidc;
		updateaftersell(r.pid,qi,r.quantity );
		makerecipt(r.pid,r.quantity);
    end loop;
	dbms_output.put_line('Checkout complete');
	dbms_output.put_line('Cart has been emptied');
end checkout;
/

-- 