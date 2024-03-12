select a.id, a.day, a.chapter, a.name, count(ar.*) as total_requests
from assignments a join assistance_requests ar
on a.id = ar.assignment_id
group by a.id
order by total_requests desc
limit 10;