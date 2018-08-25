create or replace function login (username varchar2 , pass varchar2)
return number is 

declare 
	un admintable.name%type;
	up admintable.password%type;
	cursor login_cur is select name , password from admintable;
	yes number :=0;

begin
	open login_cur;
	loop
		fetch login_cur into un , up;
		exit when login_cur%notfound;
		if un = username and up = pass
		then yes :=1;
		end if;
	end loop;
	close login_cur;
	
	return yes;
end;
/