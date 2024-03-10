select c.name as cohort_name, count(s.*) as student_count
from students s join cohorts c
on s.cohort_id = c.id
GROUP BY c.name
HAVING  count(s.*) >= 18;