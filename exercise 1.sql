show databases;
use hr;
show tables;
/*
data query language (DQL)
SELECT - COLUMN NAME
FROM - TABLE NAME
WHERE - CONDITION BEFORE GROUPING DATA 
GROUP BY  - TO GROUP THE DATA
HAVING - CONDITION AFTER GROUPING DATA
ORDER BY - SORTING THE DATA IN AN ORDER 

*/
 -- SELECTING ALL COLUMN FROM THE TABLE 
 SELECT *FROM EMPLOYEES;
 -- SELECT SINGLE COLUMN:
 SELECT EMPLOYEE_ID FROM EMPLOYEES;
 -- MULTIPLE COLUMNS:
 SELECT EMPLOYEE_ID, FIRST_NAME
 FROM EMPLOYEES;
 -- EMP FROM WORKING IN DEP 50:
 SELECT *
 FROM EMPLOYEES
 WHERE DEPARTMENT_ID IN (50,60,70,80);
 -- FECTCH EMP EARN MORE THAN 5K
 SELECT *
 FROM EMPLOYEES
 WHERE SALARY>5000;
 -- FETCH EMP EARN BETWEEN 5K TO 10K
 SELECT *
 FROM EMPLOYEES
 WHERE SALARY BETWEEN 5000 AND 10000;
 -- FETCH WORKS IN DEPT 50 AND EARN MORE 5K
 SELECT *
 FROM EMPLOYEES
 WHERE DEPARTMENT_ID=50 AND SALARY>5000;
 SELECT EMPLOYEE_ID,DEPARTMENT_ID,
 FIRST_NAME,SALARY
 FROM EMPLOYEES
 WHERE DEPARTMENT_ID=50 OR SALARY>5000;
 
 SELECT *
 FROM EMPLOYEES
 WHERE COMMISSION_PCT IS NOT NULL;
 
 SELECT*
 FROM EMPLOYEES
 WHERE MANAGER_ID IS NULL;
 SELECT distincT DEPARTMENT_ID 
 FROM EMPLOYEES;
 SELECT EMPLOYEE_ID, FIRST_NAME
 FROM EMPLOYEES
 WHERE FIRST_NAME LIKE 'J%';
SELECT EMPLOYEE_ID, FIRST_NAME
 FROM EMPLOYEES
 WHERE FIRST_NAME LIKE 'A%';
 SELECT EMPLOYEE_ID, FIRST_NAME
 FROM EMPLOYEES
 WHERE FIRST_NAME LIKE '%O%O';
 
 use hr;
 select sum(salary) as total_salary
 from employees;
 select count(employee_id) as emp_count from employees;
 select avg(salary) avg_salary
 from employees;
 select first_name, last_name
 from employees
 where hire_date =( 
 select min(hire_date) 
 from employees
 );
 
 select employee_id, first_name,min(hire_date) as firtst_join
 from employees
 group by employee_id, first_name
 order by hire_date asc
 limit 1;
 SELECT department_id, COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
order by emp_count desc;

SELECT employee_id, first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 1;

SELECT department_id, COUNT(*) AS emp_count
FROM employees
GROUP BY department_id
having emp_count>4;

SELECT department_id,first_name,last_name, salary 
FROM employees
order by salary desc
limit 2 
offset 10;

select  employee_id, first_name, salary,
row_number() over() as serial_number
from employees;
show databases;
use hr;
show tables;
select  employee_id, first_name, salary,
row_number() over() as serial_number
from employees;

select department_id, employee_id,first_name, salary,
row_number() over(partition by  order by 
selct employee_id, FIRST_NAME,SALARY,
DEPARTMENT_ID,
ROW_NUMBER()
OVER(PARTITION BY DEPARTMENT_ID
ORDER BY SALARY DESC)
AS SERIAL_NUMBER
FROM EMPLOYEEES;


SELECT 
    employee_id,
    first_name,
    salary,
    department_id,
    ROW_NUMBER() OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS serial_number
FROM employees;

SELECT 
    employee_id,
    first_name,
    salary,
    department_id,
    RANK() OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS rank_number
FROM employees;

SELECT 
    employee_id,
    first_name,
    salary,
    department_id,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS rank_number
FROM employees;

SELECT 
    employee_id,
    first_name,
    salary,
    department_id,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS rank_number
FROM employees;

SELECT 
    employee_id,
    first_name,
    salary,
    department_id,
    DENSE_RANK() OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS rank_number
FROM employees;
FROM employees;


