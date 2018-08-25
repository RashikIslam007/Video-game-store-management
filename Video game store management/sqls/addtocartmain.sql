declare
	pidc cart.pid%TYPE;
		cidc cart.cid%TYPE;
		quantityc cart.quantity%TYPE;

begin 
	pidc := &pidc;
	cidc := &cidc;
	quantityc := &quantityc;
	
	addtocart(pidc, cidc, quantityc);
end;
/