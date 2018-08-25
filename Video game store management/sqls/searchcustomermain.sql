set serveroutput on;
declare
	x customer.phone%type := '0181923314';
	
begin

	searchcustomer(x);

end;
/