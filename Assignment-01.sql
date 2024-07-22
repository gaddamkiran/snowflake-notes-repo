

CREATE or REPLACE TABLE employee (
    eno INT,
    ename VARCHAR(20),
    age INT,
    job varchar(30),
    manager_id int,
    salary FLOAT,
    phonenumber  VARCHAR (20),
    dept_no SMALLINT,
    dept_id int,
    hire_date date
    );

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (100,'Steven',24,'clerk',69062 ,4000.00,'515.123.4567',4,1001,'1987-06-17');
    
    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (101,'KAYLING  ',23,'MANAGER',37476,2750.00,'515.321.4567',2,1002,'1991-11-18');

    
    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (102,'BLAZE',30,'MANAGER',37479,2550.00 ,'515.567.4567',8,1003,' 1991-06-09');

     INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (103,'JONAS',32,'MANAGER',68319 ,2957.00 ,'515.632.4567',1,1004,'  1991-04-02');

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (104,'SCARLET ',28,'ANALYST ',68319 ,3100.00 ,'515.561.4567',3,1005,'  1997-04-19');

    
    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (105,'FRANK  ',25,'ANALYST ',68319,3100.00 ,'515.878.4567',3,1005,'  1991-12-03');

      INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (106,'SANDRINE  ',28,'CLERK ',65646,900.00  ,'515.647.4567',5,1006,'   1990-12-18');

     INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (106,'ADELYN',23,'SALESMAN   ',65646,1700.00   ,'515.647.4567',7,1007,' 1991-02-20');

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (107,'WADE ',23,'SALESMAN   ',66928,1350.00   ,'515.647.4567',9,1006,' 1992-01-23');

      INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (108,'MADDEN ',34,'SALESMAN   ',66928 ,1350.00   ,'515.654.4567',1,1006,'1991-09-28');

       INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (109,'TUCKER',32,'SALESMAN   ',66928  ,1600.00   ,'515.665.4567',2,1008,' 1991-09-08');

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (110,'ADNRES',29,'CLERK ',67858  ,1200.00 ,'515.786.4567',4,1007,'  1997-05-23');

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (111,'JULIUS ',37,'CLERK ',66928   ,1050.00 ,'515.890.4567',6,1011,'1991-12-03');

    INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (112,'MARKER ',26,'CLERK ',67832,1400.00 ,'515.123.4567',8,1010,'1992-06-23');

     INSERT INTO employee(eno,ename,age,job,manager_id,salary,phonenumber,dept_no, dept_id,hire_date) VALUES (113,'DAVID ',23,'DRAWING ',67843,3200.00 ,'515.456.4567',9,1010,'1992-02-23');


    desc table employee;
    select * from employee;

    drop table  employee;


1) Display the details of all employees?
	Select * from employees
2) Display the depart information from department table?
	Select * from departments
3) Display the name and job for all the employees?
	 Select emp_name|| '' || job_name
    AS "Employee&Job" From employess
4) Display the name and salary for all the employees?
	Select emp_name|| '' || salary
    AS "Employee&Salary" From employees
5) Display the employee no and total salary for all the employees?
	Select sum (salary) from employees
6) Display the employee name and annual salary for all employees?
	Select employee_name, salary*12 as "Annual Salary" from employees
7) Display the names of all the employees who are working in depart number 10?
	Select * from employees where department_id = 10
8) Display the names of all the employees who are working as clerks and drawing a salary more than 3000?
	Select employee_name from employees where job='CLERK' 
         		 OR JOB='DRAWING' AND SAL>3000;
9) Display the employee number and name who are earning common?
	Select employee_no, employee_name from employees where 'comm' is not null
10) Display the employee number and name who do not earn any common?
	Select employee_no, employee_name from employees where 'comm' is null


11) Display the names of employees who are working as clerks, salesman or 
analyst and drawing a salary more than 3000?
	Select employee_name, employee_no  from employees where job='CLERK' OR JOB='SALESMAN'
          OR JOB='ANALYST' AND SAL>3000;
12) Display the names of the employees who are working in the company for the past 5 years?

13) Display the list of employees who have joined the company before 30-JUN-90 or after 31-DEC-90? 	
Select *from employees where hire_date < '30-JUN-1990' or hire_date >
'31-DEC-90'
14) Display current Date?
	Select current_date
15) Display the list of all users in your database (use catalog table)?
16) Display the names of all tables from current user?
18) Display the names of employees working in depart number 10 or 20 or 40 
or employees working as CLERKS, SALESMAN or ANALYST?
Select employee_name from employees where deptno in (10, 20, 40) or job
in ('CLERKS','SALESMAN','ANALYST');

19) Display the names of employees whose name starts with alphabet S?
	Select employee_name from employee where employee_name like 'S%'
20) Display the Employee names for employees whose name ends with alphabet S?
   	Select employee_name from employee where employee_name like '%S'
21) Display the names of employees whose names have second alphabet A in their name?
	Select employee_name from employees where employee_name like '_A%'
22) select the names of the employee whose names is exactly five characters in length?
	Select employee_name from employees where length (employee_name) =5

23) Display the names of the employee who are not working as MANAGERS?
Select employee_name from employees where 'job' not in ('MANAGER')
24) Display the names of the employee who are not working as SALESMAN OR   CLERK OR ANALYST? 


25) Display all rows from emp table. The system should wait after every screen full of information?

26) Display the total number of employee working in the company?
Select count (*) from employees;

27) Display the total salary being paid to all employees?
Select sum (SALARY) from employees

28) Display the maximum salary from emp table?
Select max (SALARY) from employees
29) Display the minimum salary from emp table?
Select min (SALARY) from employees; 
30) Display the average salary from emp table?
Select avg (SALARY) from employees;
	
