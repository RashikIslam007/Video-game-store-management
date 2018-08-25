declare
	pida product.pid%type; 
	branda  product.brand%type;
	pnamea product.pname%type; 
	categorya product.category%type; 
	pricea product.price%type; 
	stocka product.stock%type;
begin
	pida := &pida;
	pricea := &pricea;
	branda := '&branda';
	pnamea := '&pnamea';
	categorya := '&categorya';
	stocka := &stocka;
	
	insert into product(pid, price, brand, category, stock, pname) 
		values(pida, pricea, branda, categorya, stocka, pnamea);
	--select * from product;
	
	

end;
/