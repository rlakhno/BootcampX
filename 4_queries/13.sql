SELECT distinct t.name, c.name, count(ar.*) as total_assistances 
from teachers t join assistance_requests ar on t.id = ar.teacher_id
join students s on s.id = ar.student_id
join cohorts c on c.id = s.cohort_id
where c.name = 'JUL02'
group by t.name, c.name
ORDER by t.name;