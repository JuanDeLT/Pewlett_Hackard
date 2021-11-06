-- retirement eligibility
select first_name, last_name
into retirement_info
from employees
where (birth_date between '1952-01-01' and '1955-12-31') 
and (hire_date between '1985-01-01' AND '1988-12-31');

--SELECT first_name, last_name
--FROM employees
--WHERE birth_date BETWEEN '1952-01-01' AND '1954-12-31';

--SELECT first_name, last_name
--FROM employees
--WHERE birth_date BETWEEN '1952-01-01' AND '1953-12-31';

--SELECT first_name, last_name
--FROM employees
--WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

-- number of employees retiring
select count(first_name)
from employees
where (birth_date between '1952-01-01' and '1955-12-31') 
and (hire_date between '1985-01-01' AND '1988-12-31');

select * from retirement_info;