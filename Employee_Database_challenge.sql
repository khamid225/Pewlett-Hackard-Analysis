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


SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_program
from employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
ORDER BY e.emp_no, de.to_date DESC
select * from mentorship_program where 
birth_date between '1965-01-01' and '1965-12-31'
and to_date > current_date
order by emp_no;
select CURRENT_DATE;
