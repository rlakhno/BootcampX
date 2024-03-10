select c.name as cohort, count(a.*) as student_count
from students s join cohorts c
on s.cohort_id = c.id
join assignment_submissions a
on s.id = a.student_id
GROUP BY c.name
order by student_count desc;