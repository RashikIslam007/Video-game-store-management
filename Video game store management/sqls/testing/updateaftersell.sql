create or replace procedure updateaftersell(pidu in cart.pid%type, qi in cart.quantity%type, qf in cart.quantity%type)is 

	qd cart.quantity%type ;
begin
	qd := qi - qf;
	update product set stock = qd where pid = pidu;
end;
/