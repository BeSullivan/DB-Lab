SELECT *
FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
WHERE dept.name = 'sales' or dept.name = 'inventory'