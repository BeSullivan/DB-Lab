SELECT prj.name
FROM emp INNER JOIN prjmember ON prjmember.emp_id = emp.emp_id INNER JOIN prj ON prj.prj_id = prjmember.prj_id
GROUP BY prj.prj_id
HAVING count (emp.emp_id) < 4