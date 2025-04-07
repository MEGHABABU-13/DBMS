p1)
BEGIN
   DBMS_OUTPUT.put_line('Hai All');
END;
/
p2)
DECLARE
	sname varchar2(25);
BEGIN
	sname:='Ann';
	dbms_output.put_line('Student name is '||sname);
END;
/	
p3)
DECLARE
	sname varchar2(25):='ABY';
BEGIN
	dbms_output.put_line('Student name is'||' '||sname);
END;
/
p4)
DECLARE
	sname varchar2(25);
BEGIN
	sname:='&sname';
	dbms_output.put_line('Student name is '||sname);
END;
/
p5)
Accept n1 prompt 'Enter your name :';
DECLARE
	sname varchar2(25);
BEGIN
	sname:='&n1';
	dbms_output.put_line('Student name is '||sname);
END;
/
p6)
DECLARE
	a number;
	b number;
	
BEGIN
	a:=10;
	b:=20;
	dbms_output.put_line('SUM :'||(a+b));
END;
/
sumb)
DECLARE
	a number:=10;
	b number:=12; 
BEGIN
	dbms_output.put_line('SUM OF A AND B IS :'||(a+b));
END;
/
sumc)
DECLARE
	a number;
	b number;
BEGIN
	a:=&a;
	b:=&b;
	dbms_output.put_line('SUM :'||(a+b));
END;
/
sumd)
Accept n1 prompt 'Enter first number:';
Accept n2 prompt 'Enter second number:';
DECLARE
	num1 number;
	num2 number;
BEGIN
	num1:=&n1;
	num2:=&n2;
	dbms_output.put_line('Sum : '||(num1+num2));
END;
/
if)
Accept n1 prompt 'Enter a number:';
DECLARE
	a number;
BEGIN
	a:=&n1;
	IF a>0 THEN
		dbms_output.put_line('The number is positive');
	ELSIF a<0 THEN
		dbms_output.put_line('The number is negative');
	ELSE
		dbms_output.put_line('The number is zero');
	END IF;			
END;
/
  
loops)
DECLARE
	i number;
BEGIN
	i:=1;
	dbms_output.put_line('Numbers are :');
	FOR i in 1..10 LOOP
		dbms_output.put_line(i);
	END LOOP;
END;
/

output


SQL> @p1.sql   
Hai All

PL/SQL procedure successfully completed.

SQL> @p2.sql
Student name is Ann

PL/SQL procedure successfully completed.

SQL> @p3.sql
Student name is ABY

PL/SQL procedure successfully completed.

SQL> @p4.sql
Enter value for sname: RON
old   4: 	sname:='&sname';
new   4: 	sname:='RON';
Student name is RON

PL/SQL procedure successfully completed.

SQL> @p5.sql
Enter your name :UMA
old   4: 	sname:='&n1';
new   4: 	sname:='UMA';
Student name is UMA

PL/SQL procedure successfully completed.

SQL> @suma.sql
SUM :30

PL/SQL procedure successfully completed.

SQL> @sumb.sql
SUM OF A AND B IS :22

PL/SQL procedure successfully completed.

SQL> @sumc.sql
Enter value for a: 6
old   5: 	a:=&a;
new   5: 	a:=6;
Enter value for b: 5
old   6: 	b:=&b;
new   6: 	b:=5;
SUM :11

PL/SQL procedure successfully completed.

SQL> @sumd.sql
Enter first number:5
Enter second number:45
old   5: 	num1:=&n1;
new   5: 	num1:=5;
old   6: 	num2:=&n2;
new   6: 	num2:=45;
Sum : 50

PL/SQL procedure successfully completed.

SQL> @ifelse.sql
Enter a number:7
old   4: 	a:=&n1;
new   4: 	a:=7;
The number is positive

PL/SQL procedure successfully completed.

SQL> @loop.sql
Numbers are :
1
2
3
4
5
6
7
8
9
10

PL/SQL procedure successfully completed.



