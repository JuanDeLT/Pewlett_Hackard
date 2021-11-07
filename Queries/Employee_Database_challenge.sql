-- DELIVERABLE 1
-- table that holds: all the titles of current employees who were born between 1/1/1952 and 12/31/1955
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees e 
	inner join titles t 
		on(e.emp_no = t.emp_no)
where (birth_date between '1952-01-01' and '1955-12-31')
ORDER BY emp_no, title desc;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
into unique_titles
from retirement_titles rt 
ORDER BY emp_no, to_date DESC;

-- retrieve the number of employees by their most 
select count(ut.first_name), ut.title 
into retiring_titles
from unique_titles ut 
group by ut.title
order by count desc;

-- DELIVERABLE 2 
select distinct on(emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
into mentorship_eligibility
from employees e 
	inner join dept_employees de 
		on(e.emp_no = de.emp_no)
	inner join titles t 
		on (e.emp_no = t.emp_no)
where (de.to_date = '9999-01-01')
and (birth_date between '1965-01-01' and '1965-12-31') 
order by emp_no;

-- how many roles will need to be filled as the 'silver tsunami' begins to make an impact?
select count(ut.first_name) as "Total Openings"
into total_openings
from unique_titles ut; 



