select s.name as student_name, s.start_date as student_start_day, c.name as cohort_name, c.start_date as cohort_start_day
from students as s join cohorts as c
on s.cohort_id = c.id 
WHERE c.start_date != s.start_date
order by c.start_date;