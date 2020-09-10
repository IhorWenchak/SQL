/****** Write SQL query that finds name of course and related students.  ******/
SELECT * FROM FacultyMathematicDB.dbo.STUDENTS st
INNER JOIN GROUPS gr ON gr.GROUP_ID = st.GROUP_ID
INNER JOIN COURSES cours ON cours.COURSE_ID = gr.COURSE_ID
WHERE cours.NAME = 'HTML5 è CSS3 Starter'