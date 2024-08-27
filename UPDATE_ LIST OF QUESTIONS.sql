/* LATEST UPDATE: LIST OF QUESTIONS **/

SELECT*FROM CLUB;
SELECT*FROM CLUB_LEADER;
SELECT*FROM LECT_ADVISOR;
SELECT*FROM MEMBERSHIP;
SELECT*FROM REGISTRATION;
SELECT*FROM STUDENT;

/*1. change register_status STU2021033 , STU2019027, STU2022023, STU2021022 to approved on 30/ 3/ 2024 
#DML# */

UPDATE REGISTRATION
SET Register_status = 'Approved', Register_Date = '2024-03-30'
WHERE Stu_ID IN ('STU2021033', 'STU2019027', 'STU2022023', 'STU2021022');
SELECT * FROM REGISTRATION WHERE Stu_ID IN ('STU2021033', 'STU2019027', 'STU2022023', 'STU2021022');
commit;

/*2. display the registeration that exist in club_ID 'CL202311'. 
The result should display club_ID, Register_status, Stu_ID and Lect_ID 
#Sorting& DML# */

SELECT Club_ID, Register_status, Stu_ID, Lect_ID
FROM REGISTRATION
WHERE Club_ID = 'CL202311'
ORDER BY Stu_ID DESC;
commit;


/*3. display all Register_status that is pending. The result should display 
Register_ID, Register__status, Register_Date, Stu_ID, Lect_ID and Club_ID. The result must be sorted by Register_Date ascending.
Sorting:
#DML & Scalar Function# */

SELECT Register_ID, Register_status, Register_Date, Stu_ID, Lect_ID, Club_ID
FROM REGISTRATION
WHERE Register_status = 'Pending'
ORDER BY STR_TO_DATE(Register_Date, '%d/%m/%y') ASC;
commit;

/*4. Retrieve the names of students who are members of clubs led 
by a student enrolled in the 'Computer Science' program.
#DML & Retrieve Data from Multiple Tables#*/

SELECT DISTINCT S.Stu_Name
FROM STUDENT S
JOIN CLUB_LEADER CL ON S.Leader_ID = CL.Leader_ID
WHERE S.Stu_Program = 'Computer Science';
commit;

/*5. Calculate the total number of members in each club and 
display the club ID and club name along with the total count of members.
#DML , Retrieve Data from Multiple Tables, Grouping & Column Function#*/

SELECT C.Club_ID,C.Club_Name, COUNT(C.Club_ID) AS Total_New_Members
FROM REGISTRATION R,CLUB C 
WHERE R.CLUB_ID = C.CLUB_ID
GROUP BY C.Club_ID,C.club_Name;
commit;

/*6. Write a query to retrieve the Student IDs and their respective first Register Dates if 
the Register Status is still 'Pending' after a 3-month appraisal from the Register Date
#DML,ColumnFunc,Grouping,Arithmetic#*/

SELECT Stu_ID, MIN(Register_Date) AS First_Register_Date
FROM REGISTRATION
WHERE Register_status = 'Pending' AND DATEDIFF(CURDATE(), Register_Date) > 90
GROUP BY Stu_ID;
commit;

/*7. List the names of students and it's register status who are members of clubs that have
 been approved but are not yet  be a student leader.
 #SubQueries,Sorting & retrieval from multiple table,#*/

 SELECT S.STU_NAME, R.REGISTER_STATUS
FROM STUDENT S
JOIN REGISTRATION R ON S.STU_ID = R.STU_ID
WHERE S.STU_NAME NOT IN (
    SELECT S.STU_NAME
    FROM STUDENT S
    WHERE S.LEADER_ID IS NOT NULL
)
AND R.REGISTER_STATUS = 'Approved'
ORDER BY S.STU_NAME ASC;
commit;

/*8. List the names of clubs and their average membership totals,
 where the average membership total is less than the overall average membership total across all clubs.
 Include only clubs with at least one member. Sort the results by the average membership total in ascending order
  #SubQueries,Sorting,Arithmetic,Column Function & retrieval from multiple table,#*/
 
SELECT c.Club_Name, TRUNCATE(AVG(m.Member_Total), 0) AS Average_Member
FROM CLUB c, MEMBERSHIP m
WHERE c.Club_ID = m.Club_ID
AND c.Club_Name IS NOT NULL
GROUP BY c.Club_Name
HAVING COUNT(m.Stu_ID) > 0 
AND AVG(m.Member_Total) < (
    SELECT AVG(Member_Total)
    FROM MEMBERSHIP
)
ORDER BY Average_Member ASC;

/*9. List the id of the club, club name, club location, club description and the lecturer id who
 in charge the club of the club that is their first name start with letter 's' and 'f'  
 or the location of the club at Room122. The result must be sorted by club name ascending.
  #DML,Sorting & retrieval from multiple table,#*/

SELECT c.Club_ID, c.Club_name, c.Club_location, c.Club_desc, c.Lect_ID
FROM CLUB c
JOIN LECT_ADVISOR la ON c.Lect_ID = la.Lect_ID
WHERE c.Club_Name LIKE "S%" OR c.Club_Name LIKE "F%" 
OR c.Club_Location = 'Room122'
ORDER BY c.Club_Name ASC;
commit;

/*10. Display the details of student who are in Computer Science and Mathematics Faculty 
and the student program must be Computer Science and the student 
will update their Leader_ID to be next candidate for being a leader
and sort Student name in Descending order.
#DML,Scalar Function & sorting#,*/

SELECT STU_ID, STU_Name, STU_Program, STU_Faculty, STU_No,Leader_ID,COALESCE(Leader_ID,"Next Candidate") AS "LEADER CANDIDATE"
FROM STUDENT 
WHERE STU_Faculty = 'Computer Science and Mathematics' 
AND STU_Program = 'Computer Science'
ORDER BY STU_Name DESC;
commit;

/*11. Suppress the register status and sort the register id ascending
#DML,sorting#*/

SELECT DISTINCT Register_Status
FROM REGISTRATION
ORDER BY Register_Status ASC;
commit;

/* 12. List the names of students who are members of clubs advised by lecturers whose 
phone numbers start with '01' and who have registered for clubs with a 
registration date in 2024. Include the total number of members in each club. 
Sort the results by club id in ascending order 
#DML, Sorting,Retrieve Data from Multiple Tables,Subqueries#*/

SELECT s.Stu_Name, m.Club_ID, m.Member_Total
FROM STUDENT s
JOIN MEMBERSHIP m ON s.Stu_ID = m.Stu_ID
WHERE m.Club_ID IN (
        SELECT r.Club_ID
        FROM REGISTRATION r
        WHERE  r.Lect_ID IN (
             SELECT  Lect_ID
             FROM  LECT_ADVISOR
             WHERE  Lect_No LIKE '01%'
            )
        AND YEAR (r.Register_Date) = 2024
    )
ORDER BY m.Club_ID ASC;

SELECT CONCAT(S.Stu_Name, ' - ', C.Club_name, ' (', R.Register_Status, ')') AS Registration_Info
FROM REGISTRATION R, STUDENT S, CLUB C
WHERE  R.Stu_ID = S.Stu_ID
AND R.Club_ID = C.Club_ID
ORDER BY STR_TO_DATE(R.Register_Date, '%d/%m/%Y') ASC;


SELECT R.Register_ID, R.Register_Status, R.Register_Date, R.Stu_ID, R.Lect_ID, R.Club_ID,
COALESCE(CL.leader_Name, 'Next Candidate') AS Leader_Name
FROM REGISTRATION R, CLUB_LEADER CL
WHERE  R.Club_ID = CL.Club_ID AND R.Lect_ID = CL.Lect_ID
ORDER BY R.Register_ID ASC;

