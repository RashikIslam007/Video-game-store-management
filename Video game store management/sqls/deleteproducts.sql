declare
	pidd product.pid%type;

begin
	pidd := &pidd;
	delete from product where pid = pidd;

end;
/