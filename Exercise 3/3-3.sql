SELECT *
FROM dept 
WHERE not exists ( SELECT *
				   FROM emp 				   
				   WHERE dept.deptno = emp.deptno )