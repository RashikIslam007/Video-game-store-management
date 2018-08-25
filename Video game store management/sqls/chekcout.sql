create or replace procedure checkout(cidc in cart.cid%type)is
cursor c is select pid , cid, quantity from cart where cid = cidc;
qi product.stock%type;
begin
	
    for r in c loop
       insert into salesrecord (cid, pid, quantity) values (r.pid , r.cid, r.quantity);
		select stock into qi from product where pid = r.pid;
		updateaftersell(r.pid,qi,r.quantity );
		makerecipt(r.pid,r.quantity);
		delete from cart where cid = cidc;
    end loop;
end checkout;
/

-- 