select sum(a.duration) as total_duration
from students s 
join assignment_submissions a
on s.id = a.student_id 
where name = 'Ibrahim Schimmel';