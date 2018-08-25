/*--set serveroutput on;
create or replace procedure makerecipt(pidu in cart.pid%type, qi in cart.quantity%type)is 
	--pricec product.price%type;
	--total product.price%type;
	--namec product.pname%type;
begin
	--select pname from product into namec where pid = pidu;
	--select price from product into pricec where pid = pidu;
	--total := qi * pricec;
	--dbms_output.put_line( to_char(pidu)||' ' ||to_char(namec)|| ' '||to_char(qi)||' '||to_char(total));
end makerecipt;
 */
set serveroutput on;
create or replace procedure makerecipt(pidu in cart.pid%type, qi in cart.quantity%type)is 

	qd cart.quantity%type ;
	pri product.price%type;
	tot product.price%type;
	nam product.pname%type;
begin
	qd := qi;
	select pname into nam from product  where pid = pidu;
	select price into pri from product where pid = pidu;
	tot := qi * pri;
	dbms_output.put_line('product_id	product_name	quantity	unit_price	total');
	dbms_output.put_line('---------------------------------------------------------');
	dbms_output.put_line( to_char(pidu)||'	 	' ||to_char(nam)|| ' 		'||to_char(qi)||'		 '||to_char(pri)||''||to_char(tot));
	--update product set stock = qd where pid = pidu;
end;
/