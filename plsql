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

p5)
Accept sname prompt 'Enter name:';
Accept num prompt 'Enter roll no:';
Accept m1 prompt 'Enter mark for physics:';
Accept m2 prompt 'Enter mark for chemistry:';
Accept m3 prompt 'Enter mark for maths:';
Accept m4 prompt 'Enter mark for hindi:';
DECLARE
	name varchar(10);
	roll_no number(2);
	mark1 number;
	mark2 number;
	mark3 number;
	mark4 number;
	total number;
	percentage number(8,2);
BEGIN
	name:='&sname';
	roll_no:=&num;
	mark1:=&m1;
	mark2:=&m2;
	mark3:=&m3;
	mark4:=&m4;
	total:=mark1+mark2+mark3+mark4;
	percentage:=total/4;
	dbms_output.put_line('The total mark of '||name);
	dbms_output.put_line('Total :'||total);
	dbms_output.put_line('percentage: '||percentage);
END;
/
output
developer@ccfl3-pc10:~/Megha$ sqlplus mca70/mca70@172.16.50.33/FISAT

SQL*Plus: Release 23.0.0.0.0 - Production on Wed Apr 9 15:10:15 2025
Version 23.4.0.24.05

Copyright (c) 1982, 2024, Oracle.  All rights reserved.

Last Successful login time: Wed Apr 09 2025 15:08:08 +05:30

Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.9.1.0.0

SQL> set serveroutput on
SQL> @mark.sql
Enter name:RON
Enter roll no:8
Enter mark for physics:68
Enter mark for chemistry:97
Enter mark for maths:88
Enter mark for hindi:69
old  11: 	name:='&sname';
new  11: 	name:='RON';
old  12: 	roll_no:=&num;
new  12: 	roll_no:=8;
old  13: 	mark1:=&m1;
new  13: 	mark1:=68;
old  14: 	mark2:=&m2;
new  14: 	mark2:=97;
old  15: 	mark3:=&m3;
new  15: 	mark3:=88;
old  16: 	mark4:=&m4;
new  16: 	mark4:=69;
The total mark of RON
Total :322
percentage: 80.5

PL/SQL procedure successfully completed.



p6)
DECLARE
	max_salary number(8,2);
BEGIN
	SELECT max(emp_salary) into max_salary from employee70A;
	dbms_output.put_line('Maximum salary:'||max_salary);
END;
/

output
SQL> @maxsal.sql
Maximum salary:80000

PL/SQL procedure successfully completed.


p7)
DECLARE
	max_salary number(8,2);
	empname employee70A.emp_name%type;
	deptid employee70A.dept_id%type;
BEGIN
	select max(emp_salary) into max_salary from employee70A;
	dbms_output.put_line('Highest salary:'||max_salary);
	select emp_name,dept_id into empname,deptid from employee70A where emp_salary=max_salary;
	dbms_output.put_line('Employee '||empname);
	dbms_output.put_line('Department id:'||deptid);
	
END;
/

output
SQL> @empsal.sql
Highest salary:80000
Employee Emy
Department id:102

PL/SQL procedure successfully completed.





