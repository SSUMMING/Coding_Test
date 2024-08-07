SELECT S.student_id ,S.student_name ,Sub.subject_name, COUNT(E.student_id) AS attended_exams 
FROM Students S
CROSS JOIN Subjects Sub
LEFT JOIN Examinations E ON S.student_id = E.student_id AND E.subject_name = Sub.subject_name
GROUP BY S.student_id ,student_name ,Sub.subject_name
ORDER BY S.student_id, Sub.subject_name