/*
Query Name: sample_join
Author: Thomas Osgood
Description:
	Gives print out of main table values.
	Displays the employee name, status, and
	occurrences of status for each employee
	who has an entry in main.
*/
SELECT e.name,t.status, IFNULL(COUNT(t.timing_id),0) as occurrences FROM main as m
LEFT JOIN timing as t
ON (m.timing_id = t.timing_id)
LEFT JOIN employees as e
ON (m.employee_id = e.employee_id)
GROUP BY t.timing_id, e.employee_id
ORDER BY e.name ASC, t.status ASC;