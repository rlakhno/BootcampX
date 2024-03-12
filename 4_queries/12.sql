SELECT distinct t.name, c.name
from teachers t join assistance_requests ar on t.id = ar.teacher_id
join students s on s.id = ar.student_id
join cohorts c on c.id = s.cohort_id
where c.name = 'JUL02'
ORDER by t.name;
