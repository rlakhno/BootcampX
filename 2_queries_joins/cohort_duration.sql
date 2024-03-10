select sum(a.duration) as total_duration
from students s 
join assignment_submissions a
on s.id = a.student_id
join cohorts c 
on c.id = s.cohort_id 
where c.name = 'FEB12';