set serveroutput on;
declare
	mun admintable.name%type;
	mp admintable.password%type;
	loginflag number;
begin
	mun := '&mun';
	mp := '&mp';
	
	loginflag := login(mun,mp);
	
	if loginflag = 1 
	    then dbms_output.put_line('Login successful');
	else 
	    dbms_output.put_line('Login unsuccessful');
	end if;
end; 
/