#1º Com condição essa lista
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE NOT(SALARY >= 10000 AND SALARY <= 15000);
#Ou usando BETWEEN (NOT BETWEEN 10000 AND 15000)
#2º
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID = 30 OR DEPARTMENT_ID= 100;
#USANDO WHERE department_id IN (30, 100)
#3º
SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID FROM employees
WHERE NOT(SALARY >= 10000 AND SALARY <= 15000) 
AND
(DEPARTMENT_ID = 30 OR DEPARTMENT_ID= 100);
#4º
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM employees
WHERE YEAR(HIRE_DATE) = 1987;
# OU USANDO YEAR(hire_date)  LIKE '1987%'; ele usa LIKE(não sei exatamente se há diferença)
#5º Usando do meu jeito
SELECT FIRST_NAME FROM employees
WHERE first_name REGEXP  'c' AND first_name REGEXP 'b';
# Pelo gabarito é possível usar '%c%' para verificar a ocorrência
#6º
SELECT LAST_NAME, JOB_ID, SALARY FROM employees
WHERE (JOB_ID = 'IT_PROG' OR JOB_ID = 'ST_CLERK') AND NOT(SALARY = 4500 AND SALARY = 10000 AND SALARY = 15000);
#USAR O IN parece mais viável, não precisa ficar digitando 1 milhão de vezes a condição
#7º
SELECT LAST_NAME FROM employees
WHERE  CHARACTER_LENGTH(LAST_NAME) = 6;
#8º
SELECT LAST_NAME FROM employees
WHERE  LAST_NAME LIKE '__e%';
#O uso do like é obrigatório nesse caso
#9º
SELECT DISTINCT job_id  FROM employees;
#10º
SELECT FIRST_NAME, LAST_NAME, SALARY, SALARY*0.15 AS PF FROM employees;
#11º
SELECT * FROM employees WHERE LAST_NAME IN('BLAKE','SCOTT','KING','GORD');