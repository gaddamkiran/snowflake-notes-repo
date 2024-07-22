

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

    
    INSERT dept_id,hire_date) VALUES (104,'SCARLET ',28,'ANALYST ',68319 ,3100.00 ,'515.561.4567',3,1005,'  1997-04-19');

    
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

31) Display the maximum salary being paid to CLERK?
	Select max (salary) from employee where job = 'clerk'
32) Display the maximum salary being paid to depart number 20?
Select max (salary) from employee where dept_no = 8
33) Display the minimum salary being paid to any SALESMAN?
	Select min (salary) from employee where job = 'salesman'
34) Display the average salary drawn by MANAGERS?
	Select avg (salary) from employee where job = 'manager'
35) Display the total salary drawn by ANALYST working in departs number 3? 
Select sum (salary) from employee where job='ANALYST' and dept_no=3
36) Display the names of the employee in order of salary i.e. the name of the
employee earning lowest salary should appear first. Select ename from employee order by salary?
	Select ename from employee order by salary
37) Display the names of the employee in descending order of salary?
	Select ename from employee order by salary desc
38) Display the names of the employee in order of employee name?
	Select ename from employee order by ename
39) Display empno, ename, deptno, sal sort the output first base on name and within name by deptno and within deptno by sal?
	Select eno, ename, dept_no, salary from employee "order by"
40) Display the name of the employee along with their annual salary (sal*12).The name of the employee earning highest annual salary should appear first?
	Select ename, salary*12 from employee order by salary desc
42) Display department numbers and total number of employees working in each department?
	Select dept_no, count (dept_no) from employee group by dept_no


43) Display the various jobs and total number of employees within each job group?
	Select job, count (job) from employee group by job
44) Display the depart numbers and total salary for each department?
	Select dept_no, sum (salary) from employee group by dept_no
45) Display the depart numbers and max salary for each department?
 Select dept_no, max (salary) from employee group by dept_no
46) Display the various jobs and total salary for each job?
	Select job, sum (salary) from employee group by job;
48) Display the depart numbers with more than three employees in each dept?
	Select dept_no, count (dept_no) from employee group by dept_no having
Count (*) >3
49) Display the various jobs along with total salary for each of the jobs where total salary is greater than 40000?
	Select job, sum (salary) from employee group by job having sum (salary)>40000
50) Display the various jobs along with total number of employees in each job. The output should contain only those jobs with more than three employees?
Select job, count (eno) from employee group by job having count (job) >3
51) Display the name of the employee who earns highest salary?
	Select ename from employee where salary = (select max (salary) from employee)
52) Display the employee number and name for employee working as clerk and earning highest salary among clerks?
	Select eno, ename from employee where job='CLERK'
           And salary = (select max (salary) from employee where job='CLERK')
53) Display the names of salesman who earns a salary more than the highest salary of any clerk?
	Select ename, salary from employee where job='SALESMAN' and salary> (select
Max (salary) from employee
 Where job='CLERK')
54) Display the names of clerks who earn a salary more than the lowest Salary of any salesman?
	Select ename from employee where job='CLERK' and salary> (select min (salary)
From employee
             Where job='SALESMAN')
55) Display the names of employees who earn a salary more than that of Jones or that of salary Greater than   that of Scott?
	Select ename, salary from employee where salary>
(Select salary from employee where ename='JONES') and salary> (select salary from employee
Where ename='SCOTT')
55) Display the names of the employees who earn highest salary in their respective departments?
	Select ename, salary, dept_no from employee where salary in (select max (salary) from
Employee group by dept_no)
56) Display the names of the employees who earn highest salaries in their respective job groups?
	Select ename from employee where salary in (select max (salary) from employee
Group by job)
57) Display the employee names who are working in accounting department?
	Select ename from employee where dept_no = (select dept_no from dept where
Dname ='ACCOUNTING')
59) Display the Job groups having total salary greater than the maximum salary for managers?
	SELECT JOB, SUM (SALARY) FROM EMPLOYEE GROUP BY JOB HAVING SUM (SALARY)> (SELECT
MAX (SALARY) FROM EMPLOYEE WHERE JOB='MANAGER')\
	













	








