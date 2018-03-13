SELECT *
FROM emp
WHERE not exists (SELECT *
					FROM emp as s
					WHERE emp.deptno = s.deptno and emp.salary < s.salary)