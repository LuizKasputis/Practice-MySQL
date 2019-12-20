#1º Demorei pra entender, mas ele quer o salario MAIOR que o funcionario com o sobrenome BULL, portanto é necessário utilizar SUBQUERY 
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY > (SELECT SALARY FROM employees WHERE last_name = 'Bull');
#2º No gabarito ele utiliza uma subquery, mas não é necessário
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE JOB_ID = 'IT_PROG';
#3º O enunciado me bugou, mas basicamente é só olhar olhar o diagrama, no problems
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM departments WHERE LOCATION_ID IN 
(SELECT LOCATION_ID FROM locations WHERE COUNTRY_ID = 'US'));
#4º
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE EMPLOYEE_ID IN (SELECT MANAGER_ID FROM departments);
#5º
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY >= (SELECT AVG(SALARY) FROM employees);
#6º Além do salario deve se ligar o JOB_ID DE cada um
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY = (SELECT MIN_SALARY FROM jobs WHERE employees.JOB_ID = jobs.JOB_ID);
#7º A média salarial nesse caso é de todos os empregados, eu havia entendido que se tratava da média dos profissionais em TI
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM employees WHERE JOB_ID = 'IT_PROG') 
AND SALARY > (SELECT AVG(SALARY) FROM employees);
#8º
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY > (SELECT SALARY FROM employees WHERE LAST_NAME = 'Bell');
#9º
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY = (SELECT MIN(SALARY) FROM employees);
#10º Nesse caso ele quer comparar a média de todos os departamentos e se existir alguem que recebe um valor superior a esses, o uso do ALL se torna necessário
#Para poder comparar todos os elementos
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY >= ALL(SELECT AVG(SALARY) FROM employees GROUP BY DEPARTMENT_ID);
#11º
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY > ALL(SELECT SALARY FROM employees WHERE JOB_ID = 'SH_CLERK')
ORDER BY SALARY ASC;
#12º
SELECT FIRST_NAME, LAST_NAME FROM employees
WHERE employee_id NOT IN(SELECT MANAGER_ID FROM employees);
#13º
SELECT E.DEPARTMENT_ID, FIRST_NAME, LAST_NAME, DEPARTMENT_NAME FROM employees E
INNER JOIN departments D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY DEPARTMENT_NAME;
#14º
SELECT employee_id, first_name, SALARY FROM employees A 
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = A.department_id);
#15º ACHO MAIS FACIL
SELECT EMPLOYEE_ID FROM employees WHERE (EMPLOYEE_ID % 2) != 0;
#16º ELE PEDE DISTINTO, esqueci dese detalhe
SELECT DISTINCT SALARY FROM employees ORDER BY SALARY DESC LIMIT 1 OFFSET 4;
#17º
SELECT DISTINCT SALARY FROM employees ORDER BY SALARY ASC LIMIT 1 OFFSET 3;
#18º
SELECT * FROM employees ORDER BY EMPLOYEE_ID DESC LIMIT 10;
#19º
SELECT * FROM departments WHERE DEPARTMENT_ID NOT IN(select DEPARTMENT_ID FROM employees);
#20ºizi pizi
SELECT DISTINCT SALARY FROM employees ORDER BY SALARY DESC LIMIT 3;
#21º
SELECT DISTINCT SALARY FROM employees ORDER BY SALARY ASC LIMIT 3;
#22º