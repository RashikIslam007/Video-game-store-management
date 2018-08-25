set serveroutput on;
declare
	pidu product.pid%type;
	priceu product.price%type;
	qu product.stock%type;
	
begin
	pidu:=&pidu;
	priceu:=&priceu;
	qu:=&qu;

	update product set price = priceu, stock = qu where pid = pidu;
end;
/