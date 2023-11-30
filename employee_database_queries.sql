/* Problem 1: from the following table return complete information about the employees.

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output: 
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  ....

*/

SELECT * FROM employees;


/*Problem 2: 
 From the following table, write a SQL query to find the salaries of all employees. Return salary.

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output: 
salary
---------
 6000.00
 2750.00
 2550.00
 2957.00
 ....
*/
SELECT salary
FROM employees;

/*problem 3: From the following table, write a SQL query to find the unique designations of the employees. Return job name.

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output:
job_name
-----------
 CLERK
 SALESMAN
 MANAGER
 PRESIDENT
 ANALYST
(5 rows)
*/
SELECT DISTINCT job_name 
FROM employees;

/*problem 4: From the following table, write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars.

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)
output:
emp_name |  Salary
----------+----------
 KAYLING  | $  6,900
 BLAZE    | $  3,163
 CLARE    | $  2,933
 JONAS    | $  3,401
 SCARLET  | $  3,565
 ....
 */
SELECT emp_name,
       to_char(1.15*salary,'$99,999') AS "Salary"
FROM employees;
/*problem 5: From the following table, write a SQL query to list the employee's name and job name as a format of "Employee & Job".

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output:
Employee & Job
---------------------
 KAYLING   PRESIDENT
 BLAZE   MANAGER
 CLARE   MANAGER
 JONAS   MANAGER
 SCARLET   ANALYST
 ....
*/
SELECT emp_name|| '   ' ||job_name AS "Employee & Job"
FROM employees ;

/*problem 6: Write a query in SQL to produce the output of employees as follows.
Employee
JONAS(manager).
 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)
output:
Employee
--------------------
 KAYLING(president)
 BLAZE(manager)
 CLARE(manager)
 JONAS(manager)
 SCARLET(analyst)
 ....
*/
SELECT emp_name || '('|| lower(job_name)||')' AS "Employee"
FROM employees;
/*problem 7: From the following table, write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.

Sample table: employees

 emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output: 
emp_id | emp_name | salary  |      to_char
--------+----------+---------+-------------------
  68319 | KAYLING  | 6000.00 | NOVEMBER  18,1991
  66928 | BLAZE    | 2750.00 | MAY       01,1991
  67832 | CLARE    | 2550.00 | JUNE      09,1991
  65646 | JONAS    | 2957.00 | APRIL     02,1991
  67858 | SCARLET  | 3100.00 | APRIL     19,1997
  ....
*/
SELECT emp_id,
       emp_name,
       salary,
       to_char(hire_date,'MONTH DD,YYYY')
FROM employees;


/*problem 8:  From the following table, write a SQL query to count the number of characters except the spaces for each employee name. 
Return employee name length.
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)

output : 
length
--------
      7
      5
      5
      5
      7
	  ....
*/

SELECT length(trim(emp_name))
FROM employees;

/*problem 9: From the following table, write a SQL query to find the employee ID, salary, and commission of all the employees.

Sample table: employees

emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)
emp_id | salary  | commission
--------+---------+------------
  68319 | 6000.00 |
  66928 | 2750.00 |
  67832 | 2550.00 |
  65646 | 2957.00 |
  67858 | 3100.00 |
  ....
  */
SELECT emp_id,
       salary,
       commission
FROM employees;

/*problem 10:
From the following table, write a SQL query to find the unique department with jobs. Return department ID, Job name.

Sample table: employees
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
  69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
  64989 | ADELYN   | SALESMAN  |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN  |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  66564 | MADDEN   | SALESMAN  |      66928 | 1991-09-28 | 1350.00 |    1500.00 |   3001
  68454 | TUCKER   | SALESMAN  |      66928 | 1991-09-08 | 1600.00 |       0.00 |   3001
  68736 | ADNRES   | CLERK     |      67858 | 1997-05-23 | 1200.00 |            |   2001
  69000 | JULIUS   | CLERK     |      66928 | 1991-12-03 | 1050.00 |            |   3001
  69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
(14 rows)
dep_id | job_name
--------+-----------
   3001 | MANAGER
   2001 | ANALYST
   3001 | SALESMAN
   1001 | MANAGER
   1001 | PRESIDENT
   ...
*/
SELECT DISTINCT dep_id,
                job_name
FROM employees ;




