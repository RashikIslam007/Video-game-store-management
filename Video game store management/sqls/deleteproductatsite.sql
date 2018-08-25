declare
	pidd product.pid%type;

begin
	pidd := &pidd;
	delete from product@site_link where pid = pidd;

end;
/