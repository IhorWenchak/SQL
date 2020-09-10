/****** SQL query should find if any of the groups has less than 10 students.  ******/
SELECT GROUP_ID, COUNT(GROUP_ID) AS count
  FROM FacultyMathematicDB.dbo.STUDENTS  
  GROUP BY GROUP_ID
  HAVING COUNT(GROUP_ID)<10
 
  