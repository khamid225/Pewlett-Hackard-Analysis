Select emp_no,
first_name,
last_name
from employees
Select title,
from_date,
to_date
from titles
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no);
Select rt.* from retirement_titles as rt
join employees as e on rt.emp_no = e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
Order by emp_no; 
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
select * from unique_titles as ut
join employees as e on ut.emp_no = e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31';
select count(ut.emp_no), ut.title from unique_titles as ut
join employees as e on ut.emp_no = e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
group by ut.title
order by 1 desc;
