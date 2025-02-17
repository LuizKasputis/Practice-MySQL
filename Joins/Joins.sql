#1º
SELECT LOCATION_ID, STREET_ADDRESS, CITY, STATE_PROVINCE, C.COUNTRY_ID FROM locations L
INNER JOIN countries C
ON C.COUNTRY_ID = L.COUNTRY_ID;
#2º
SELECT FIRST_NAME, LAST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID ;
#3º
SELECT FIRST_NAME, LAST_NAME, JOB_ID, D.DEPARTMENT_ID, DEPARTMENT_NAME FROM DEPARTMENTS D
INNER JOIN LOCATIONS L
ON D.LOCATION_ID = L.LOCATION_ID
INNER JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
WHERE L.CITY = 'London';
#4º Esse é um pouco complicadinho no inicio, eu não tinha feito ainda INNER em uma mesma tabela, mas depois que é feito é tranquilo
SELECT E.EMPLOYEE_ID, E.LAST_NAME, D.EMPLOYEE_ID, D.LAST_NAME AS SOBRENOME_CHEFE FROM EMPLOYEES E
INNER JOIN EMPLOYEES D
ON D.EMPLOYEE_ID = E.MANAGER_ID;
#5º
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM EMPLOYEES
WHERE TIMESTAMPDIFF(DAY, HIRE_DATE, CURRENT_DATE()) < (SELECT (TIMESTAMPDIFF(DAY, HIRE_DATE, CURRENT_DATE())) FROM EMPLOYEES WHERE LAST_NAME = 'JONES');
#OU USANDO a solução do gabarito, nesse caso fica mais simples mesmo
SELECT E.FIRST_NAME, E.LAST_NAME, E.HIRE_DATE FROM EMPLOYEES E
INNER JOIN EMPLOYEES D
ON (D.LAST_NAME = 'Jones')
WHERE D.HIRE_DATE < E.HIRE_DATE;

#6º
SELECT D.DEPARTMENT_NAME, COUNT(*) AS NUM_FUNCIONARIOS FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID;

#7º
SELECT J.EMPLOYEE_ID, E.JOB_ID, END_DATE - START_DATE DAYS FROM JOBS E
INNER JOIN JOB_HISTORY J
ON E.JOB_ID = J.JOB_ID
WHERE J.DEPARTMENT_ID = 90;

#8º
SELECT E.DEPARTMENT_ID, FIRST_NAME FROM DEPARTMENTS D
INNER JOIN EMPLOYEES E
ON E.EMPLOYEE_ID = D.MANAGER_ID;

#9º
SELECT DEPARTMENT_NAME, FIRST_NAME, CITY FROM DEPARTMENTS D
INNER JOIN EMPLOYEES E
ON E.EMPLOYEE_ID = D.MANAGER_ID
INNER JOIN LOCATIONS L
ON L.LOCATION_ID = D.LOCATION_ID;

#10º
SELECT JOB_TITLE, AVG(SALARY) FROM EMPLOYEES
NATURAL JOIN JOBS
GROUP BY JOB_TITLE;

#11º
SELECT JOB_TITLE, FIRST_NAME, LAST_NAME, SALARY - MIN_SALARY AS DIFERENCA_SALARY
FROM EMPLOYEES
NATURAL JOIN JOBS;

#12º
SELECT J.* FROM job_history J
JOIN employees E 
ON (J.employee_id = E.employee_id) 
WHERE salary > 10000;

#13º 
SELECT first_name, last_name, hire_date, salary
FROM EMPLOYEES e
JOIN DEPARTMENTS d
ON e.employee_id = d.manager_id
WHERE YEAR(CURDATE()) -YEAR(hire_date) >15;
