SELECT 
    COUNT(ar.*) AS total_assistances, 
    t.name
FROM 
    assistance_requests ar 
JOIN 
    teachers t ON t.id = ar.teacher_id 
WHERE 
    t.name = 'Waylon Boehm'
GROUP BY 
    t.name;
