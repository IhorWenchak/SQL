/****** SQL query should delete all students from group with name "SR-01"  ******/
DELETE st FROM STUDENTS AS st
INNER JOIN GROUPS AS gr ON gr.GROUP_ID = st.GROUP_ID
WHERE gr.NAME = 'SR-01'