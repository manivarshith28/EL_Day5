-- NATURAL JOIN
SELECT * FROM emp NATURAL JOIN dept;

-- INNER JOIN
SELECT * FROM emp INNER JOIN dept 
ON emp.emp_id = dept.emp_id;

SELECT emp.emp_id, ename, dept_no, dname 
FROM emp INNER JOIN dept 
ON emp.emp_id = dept.emp_id;

-- LEFT JOIN
SELECT emp.emp_id, ename, dname 
FROM emp LEFT OUTER JOIN dept 
ON emp.emp_id = dept.emp_id;

SELECT dept.emp_id, ename, dname 
FROM emp LEFT OUTER JOIN dept 
ON emp.emp_id = dept.emp_id;

SELECT ename, dname 
FROM emp LEFT JOIN dept 
ON emp.emp_id = dept.emp_id;

-- RIGHT JOIN
SELECT emp.emp_id, ename, dname 
FROM emp RIGHT OUTER JOIN dept 
ON emp.emp_id = dept.emp_id;

SELECT emp.emp_id, ename, dname 
FROM emp RIGHT outer JOIN dept 
ON emp.emp_id = dept.emp_id;

SELECT dept.emp_id, ename, dname 
FROM emp RIGHT OUTER JOIN dept 
ON (emp.emp_id = dept.emp_id);

SELECT dept.emp_id, ename, dept_no, dname 
FROM emp RIGHT JOIN dept 
ON (emp.emp_id = dept.emp_id);

-- FULL JOIN
SELECT e.emp_id, e.ename, d.dname FROMemp e LEFT JOIN dept d ON e.emp_id = d.emp_id
UNION
SELECT e.emp_id, e.ename, d.dname FROMemp e RIGHT JOIN dept d ON e.emp_id = d.emp_id;

-- CROSS JOIN
SELECT e.emp_id, e.ename, d.dname 
FROM emp e CROSS JOIN dept d;

SELECT emp.emp_id, dept_no, dname as dept_name 
FROM emp, dept;

-- employees who are not working
SELECT e.emp_id, e.ename, d.dept_no, d.dname as dept_name
FROM emp e LEFT JOIN dept d ON e.emp_id = d.emp_id
WHERE d.emp_id is null;

-- departments who do not have an employee
SELECT d.dept_no, d.dname as dept_name, d.emp_id
FROM dept d LEFT OUTER JOIN emp e
ON e.emp_id = d.emp_id
WHERE d.emp_id is null;