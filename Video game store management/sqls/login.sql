create or replace function login(u_name varchar2, pass varchar2) return number is

	un admintable.name%type;
	up admintable.password%type;
	yes number;
	cursor login_cur is select name, password from admintable;
	

begin 
	yes := 0;
	open login_cur;
	
	loop
		fetch login_cur into un , up;
		exit when login_cur%notfound;
		if u_name = un and pass = up 
		then 
		yes:= 1; 
		end if;
		
	end loop;
	close login_cur;
		
	
return yes;
end;
/