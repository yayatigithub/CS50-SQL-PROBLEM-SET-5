CREATE INDEX idx_enrollments_student_course ON enrollments(student_id, course_id);

CREATE INDEX idx_courses_department_number_semester ON courses(department, number, semester);
CREATE INDEX idx_enrollments_course_id ON enrollments(course_id);


SELECT "courses"."id", "courses"."department", "courses"."number", "courses"."title", COUNT(*) AS "enrollment"
FROM "courses"
JOIN "enrollments" ON "enrollments"."course_id" = "courses"."id"
WHERE "courses"."semester" = 'Fall 2023'
GROUP BY "courses"."id"
ORDER BY "enrollment" DESC;
CREATE INDEX idx_enrollments_course_semester ON courses(id, semester);

CREATE INDEX idx_courses_department_semester ON courses(department, semester);

CREATE INDEX idx_courses_title_semester ON courses(title, semester);
CREATE INDEX idx_satisfies_course_id ON satisfies(course_id);

CREATE INDEX idx_satisfies_course_requirement ON satisfies(course_id, requirement_id);



