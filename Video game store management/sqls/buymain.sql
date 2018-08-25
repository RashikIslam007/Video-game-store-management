declare
		pidc product.pid%TYPE;
		cidc customer.cid%TYPE;
		quantityc number;

begin 
	pidc := &pidc;
	cidc := &cidc;
	quantityc := &quantityc;
	
	addtocart(pidc, cidc, quantityc);
end;
/