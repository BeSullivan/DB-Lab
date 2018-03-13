SELECT *
FROM emp INNER JOIN prjmember ON emp.emp_id = prjmember.emp_id INNER JOIN prj ON prj.prj_id = prjmember.prj_id 