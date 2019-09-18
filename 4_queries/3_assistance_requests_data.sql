SELECT teachers.name AS teacher,
  students.name AS student,
  assignments.name AS assignment,
  (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
JOIN teachers ON teacher_id = teachers.id
ORDER BY duration