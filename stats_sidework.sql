
use employees; 

#I want emp_no, gender, dept_no, and dept_name

SELECT gender, dept_name
FROM dept_emp
JOIN employees using(emp_no)
JOIN departments using(dept_no)
WHERE dept_emp.to_date > curdate()
and dept_name LIKE 'Sales' 
or dept_name LIKE 'Marketing';

SELECT gender, emp_no
FROM employees
JOIN dept_manager using(emp_no)
JOIN dept_emp using(emp_no)
WHERE dept_emp.to_date > curdate();

#I need a column that shows been_manager: yes or no
#The 24 employee numbers for the managers would be the only yes
#The rest of the employees would show a no for the been_manager column