# 1º 
SELECT FIRST_NAME as "Primeiro Nome", LAST_NAME as "Ultimo Sobrenome" from employees;
# 2º
SELECT DISTINCT department_id FROM employees;
# 3º
SELECT * from employees ORDER BY FIRST_NAME DESC ;
# 4º
SELECT FIRST_NAME as "Primeiro Nome", LAST_NAME as "Ultimo Sobrenome", SALARY, SALARY*(0.15) AS PF from employees;
# 5º
SELECT EMPLOYEE_ID, FIRST_NAME as "Primeiro Nome", LAST_NAME as "Ultimo Sobrenome", SALARY from employees order BY SALARY DESC; 
# 6º
SELECT SUM(SALARY) as PAGAMENTO_TOTAL from employees;
# 7º
SELECT MAX(SALARY) as MAXIMO, MIN(SALARY) as MINIMO from employees;
# 8º
SELECT AVG(SALARY) AS MÉDIA, COUNT(EMPLOYEE_ID) AS FUNCIONARIOS from employees;
# 9º
SELECT COUNT(EMPLOYEE_ID) AS FUNCIONARIOS from employees;
# 10º
SELECT COUNT(DISTINCT JOB_ID) AS CARGOS from employees;
# 11º
SELECT UPPER(FIRST_NAME) from employees;
# 12º
SELECT SUBSTRING(FIRST_NAME, 1, 3) from employees;
# 13º
SELECT 171*214+625 as resultado;
# 14º
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS NOME_COMPLETO from employees;
# 15º
SELECT TRIM(FIRST_NAME) AS PRIMEIRO_NOME from employees;
# 16º
SELECT CHARACTER_LENGTH(FIRST_NAME)+ CHARACTER_LENGTH(LAST_NAME) AS NUMERO_CHAR from employees;
# 17º
SELECT * FROM employees 
WHERE  first_name REGEXP  '[0-9]';
# 18º
SELECT employee_id, first_name FROM employees  LIMIT 10;
# 19º
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS NOME_COMPLETO ,ROUND((SALARY/12), 2) AS SALARIO_MENSAL FROM employees;