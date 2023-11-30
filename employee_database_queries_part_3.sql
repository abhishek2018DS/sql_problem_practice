/* The problem from 21-30 will have the following table,
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
*/


/*problem 21: write a SQL query to identify employees with more than 27 years of experience.
Return complete information about the employees.
output: 
emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
  65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
  65679 | SANDRINE | CLERK    |      69062 | 1990-12-18 | 900.00  |            |   2001
(3 rows)
*/
SELECT *
FROM employees
WHERE EXTRACT(YEAR
              FROM age(CURRENT_DATE, hire_date)) > 27;


/*problem 22: 
write a SQL query to find those employees whose salaries are less than 3500. 
Return complete information about the employees.
output: 
 emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
  67858 | SCARLET  | ANALYST  |      65646 | 1997-04-19 | 3100.00 |            |   2001
  ....
*/

SELECT *
FROM employees
WHERE salary <3500;


/*problem 23:
write a SQL query to find the employee whose designation is ‘ANALYST’. 
Return employee name, job name and salary.
output: 
emp_name | job_name | salary
----------+----------+---------
 SCARLET  | ANALYST  | 3100.00
 FRANK    | ANALYST  | 3100.00
(2 rows)
*/

SELECT emp_name,
       job_name,
       salary
FROM employees
WHERE job_name = 'ANALYST';


/*problem 24: 
write a SQL query to identify those employees who joined the company in 1991.
Return complete information about the employees.
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
  66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
  67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
  65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001
  ....
  */
SELECT *
FROM employees
WHERE to_char(hire_date,'YYYY') = '1991';



/*Problem 25:
write a SQL query identify the employees who do not report to a manager. Return employee name, job name.
output: 
emp_name     | job_name
--------------+--------------
  KAYLING     | PRESIDENT
*/

SELECT e.emp_name,
       e.job_name
FROM employees e
WHERE manager_id IS NULL;



/*Problem 26: 
write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319.
Return employee ID, employee name, salary, experience.
output:
emp_id | emp_name | salary  |       Experience
--------+----------+---------+-------------------------
  66928 | BLAZE    | 2750.00 | 26 years 8 mons 29 days
  67832 | CLARE    | 2550.00 | 26 years 7 mons 21 days
  65646 | JONAS    | 2957.00 | 26 years 9 mons 28 days
(3 rows)
*/

SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE manager_id=68319;





/*Problem 27: 
write a SQL query to find out which employees earn more than 100 per day as a salary. 
Return employee ID, employee name, salary, and experience.
output:
emp_id | emp_name | salary  |       Experience
--------+----------+---------+-------------------------
  68319 | KAYLING  | 6000.00 | 26 years 2 mons 12 days
  67858 | SCARLET  | 3100.00 | 20 years 9 mons 11 days
  69062 | FRANK    | 3100.00 | 26 years 1 mon 27 days
(3 rows)
*/

SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE (salary/30)>100;



/*Problem 28:
write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. 
Return employee name.

output:
emp_name     
--------------
  ADNRES      
  MARKER      
  SCARLET 
(3 rows)
*/

SELECT emp_name
FROM employees
WHERE hire_date + interval '96 months' > '1999-12-31';


/*Problem 29:
write a SQL query to identify the employees whose salaries are odd. 
Return complete information about the employees.
output:
emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+----------+------------+------------+---------+------------+--------
  65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001
(1 row)
*/

SELECT *
FROM employees
WHERE mod(salary,2) = 1;

/*Problem 30:
write a SQL query to identify employees whose salaries contain only three digits. 
Return complete information about the employees.

output:
emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
--------+----------+-----------+------------+------------+---------+------------+--------
  63679 | SANDRINE | CLERK     |      69062 | 1990-12-18 |  900.00 |            |   2001
*/

SELECT *
FROM employees
WHERE length(TRIM(TO_CHAR(salary,'9999'))) = 3;
