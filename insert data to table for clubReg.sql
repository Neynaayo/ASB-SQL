/* LECT_ADVISOR Rows */ 

INSERT INTO LECT_ADVISOR VALUES ('LN202018','Dr. Syifaa Qaireen', 010-6514337, 'Management and Business'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202020','Dr. Haneef Ezra', 011-56579491, 'Computer Science and Mathematics'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202021','Prof. Firman Ibrahim ', 011-33517764 , 'Information Management '); 

INSERT INTO LECT_ADVISOR VALUES ('LN202025','Prof. Hilman Ukasyah', 010-8369140, 'Computer Science and Mathematics'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202039','Dr. Anne Dahlia', 013-9967839 , 'Computer Science and Mathematics'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202040','Prof. Fayyad Syakir ', 017-3547080 , 'Accounting'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202044','Dr. Aireen Aniesha', 018-2057465 , 'Management and Business'); 

INSERT INTO LECT_ADVISOR VALUES ('LN202044','Dr. Aireen Aniesha', 018-2057465 , 'Management and Business'); 


/*TABLE CLUB_LEADER rows*/ 

INSERT INTO CLUB_LEADER VALUES ('LD_204', 'Mia Anderson', 'President Woman’s Association Leadership', 'LN202039'); 

INSERT INTO CLUB_LEADER VALUES ('LD_207' ,'Grace Moore' ,'President Finance Club', 'LN202020'); 

INSERT INTO CLUB_LEADER VALUES ('LD_208' ,'Christopher Lee' ,'President Public Speaking Club','LN202021'); 

INSERT INTO CLUB_LEADER VALUES ('LD_209' , 'Aria Wilson', 'President Sports Club', 'LN202025'); 

INSERT INTO CLUB_LEADER VALUES ('LD_211', 'Ava Lewis', 'President Consulting Club' ,'LN202021'); 

INSERT INTO CLUB_LEADER VALUES ('LD_212','Peter Parker','President Data analytics Club','LN202040'); 

INSERT INTO CLUB_LEADER VALUES ('LD_213', 'Dewi Chempaka', 'President Community Service Club', 'LN202044'); 

  

/* TABLE STUDENT rows*/ 

INSERT INTO STUDENT VALUES ('STU2022001', 'John Doe', 'Computer Science', 'Computer Science and Mathematics', 010-3232088, NULL); 

INSERT INTO STUDENT VALUES ('STU2020002', 'Jane Smith', 'Business Studies', 'Management and Business', 010-5360581, NULL); 

INSERT INTO STUDENT VALUES ('STU2022003', 'Robert Johnson', 'Banking Studies', 'Management and Business', 010-7661290, NULL); 

INSERT INTO STUDENT VALUES ('STU2023004', 'Emma White', 'Accounting', 'Accounting', 011-1345763, NULL); 

INSERT INTO STUDENT VALUES ('STU2020005', 'William Brown', 'Mathematical Sciences', 'Computer Science and Mathematics', 018-8934267, NULL); 

INSERT INTO STUDENT VALUES ('STU2020006', 'Olivia Davis', 'Information Management', 'Information Management', 019-2573626, NULL); 

INSERT INTO STUDENT VALUES ('STU2021007', 'Liam Wilson', 'Investment Analysis', 'Management and Business', 019-5206489, NULL); 

INSERT INTO STUDENT VALUES ('STU2022008', 'Ava Miller', 'Business Studies', 'Management and Business', 12-9022589, NULL); 

INSERT INTO STUDENT VALUES ('STU2023009', 'Ethan Taylor', 'Mathematical Sciences', 'Computer Science and Mathematics', 013-4523456, NULL); 

INSERT INTO STUDENT VALUES ('STU2019010', 'Mia Anderson', 'Computer Science', 'Computer Science and Mathematics', 014-6523908, 'LD_204'); 

INSERT INTO STUDENT VALUES ('STU2020011', 'Adam Noah', 'Investment Analysis', 'Information Management', 017-3457890, NULL); 

INSERT INTO STUDENT VALUES ('STU2018012', 'Sophia Clark', 'Computer Science', 'Computer Science and Mathematics', 015-3675893, NULL); 

INSERT INTO STUDENT VALUES ('STU2020013', 'Jackson Lewis', 'Information Management', 'Information Management', 015-6579097, NULL); 

INSERT INTO STUDENT VALUES ('STU2022014', 'Amelia Turner', 'Information Management', 'Information Management', 016-3547890, NULL); 

INSERT INTO STUDENT VALUES ('STU2021015', 'Oliver Moore', 'Computer Science', 'Computer Science and Mathematics', 018-3526859, NULL); 

INSERT INTO STUDENT VALUES ('STU2019016', 'Harper Green', 'Mathematical Sciences', 'Computer Science and Mathematics', 015-3648590, NULL); 

INSERT INTO STUDENT VALUES ('STU2020017', 'Benjamin King', 'Marketing Business Administration', 'Management and Business', 017-3638290, NULL); 

INSERT INTO STUDENT VALUES ('STU2021018', 'Abigail Hill', 'Business Studies', 'Management and Business', 013-2346793, NULL); 

INSERT INTO STUDENT VALUES ('STU2019019', 'Daniel Scott', 'Banking Studies', 'Management and Business', 016-2709386, NULL); 

INSERT INTO STUDENT VALUES ('STU2020020', 'Emily Carter', 'Investment Analysis', 'Management and Business', 019-6697278, NULL); 

INSERT INTO STUDENT VALUES ('STU2022021', 'Jack Adams', 'Computer Science', 'Computer Science and Mathematics', 012-3648908, NULL); 

INSERT INTO STUDENT VALUES ('STU2021022', 'Lily Turner', 'Marketing Business Administration', 'Management and Business', 012-3648909, NULL); 

INSERT INTO STUDENT VALUES ('STU2022023', 'Samuel Davis', 'Marketing Business Administration', 'Management and Business', 019-6640518, NULL); 

INSERT INTO STUDENT VALUES ('STU2019024', 'Grace Moore', 'Banking Studies', 'Management and Business', 012-6911691, 'LD_207'); 

INSERT INTO STUDENT VALUES ('STU2021025', 'Christopher Lee', 'Investment Analysis', 'Management and Business', 015-7892356, 'LD_208'); 

INSERT INTO STUDENT VALUES ('STU2020026', 'Aria Wilson', 'Computer Science', 'Computer Science and Mathematics', 012-4527291, 'LD_209'); 

INSERT INTO STUDENT VALUES ('STU2019027', 'Henry Smith', 'Marketing Business Administration', 'Management and Business', 014-8763433, NULL); 

INSERT INTO STUDENT VALUES ('STU2023028', 'Zoe Turner', 'Marketing Business Administration', 'Management and Business', 010-6284923, NULL); 

INSERT INTO STUDENT VALUES ('STU2021029', 'Isaac Hill', 'Mathematical Sciences', 'Computer Science and Mathematics', 010-3527917, NULL); 

INSERT INTO STUDENT VALUES ('STU2023030', 'Ava Lewis', 'Accounting', 'Accounting', 019-3840282,'LD_211'); 

INSERT INTO STUDENT VALUES ('STU2019031', 'Asha Yasmeen', 'Computer Science', 'Computer Science and Mathematics', 011-2092932, NULL); 

INSERT INTO STUDENT VALUES ('STU2020032', 'Peter Parker', 'Banking Studies', 'Management and Business', 012-4629103, 'LD_212'); 

INSERT INTO STUDENT VALUES ('STU2021033', 'Dewi Chempaka', 'Investment Analysis', 'Management and Business', 017-3548922, 'LD_213'); 

INSERT INTO STUDENT VALUES ('STU2022034', 'Citra Elvina', 'Banking Studies', 'Management and Business', 018-3548929, NULL); 

  

/*TABLE CLUB rows*/ 

INSERT INTO CLUB VALUES ('CL202205', 'Women’s Association Leadership', 'Lecture Hall', 'provide a network of support for ASB students throughout their academic and professional careers.', 'LN202039');

INSERT INTO CLUB VALUES ('CL202208', 'Consulting Club', 'Gym', 'A student-run organization dedicated to equipping our fellow students with the skills and competencies required for a career in consulting.', 'LN202021'); 

INSERT INTO CLUB VALUES ('CL202209', 'Sports Club', 'Sports Arena' , 'promote recreational and sporting activities, and foster a culture of camaraderie, inclusiveness and competitiveness among the wider ASB community.' , 'LN202025'); 

INSERT INTO CLUB VALUES ('CL202310', 'Finance Club', 'Interactive Classroom', 'Spreading awareness about Finance and helping connect club members to eminent personalities in the finance industry. ', 'LN202020'); 

INSERT INTO CLUB VALUES ('CL202311', 'Public Speaking Club', 'Sri Laksamana Room', 'A space that empowers members of the ASB community to develop their confidence when speaking in front of large group', 'LN202018'); 

INSERT INTO CLUB VALUES ('CL202312', 'Data analytics Club', 'Room 301', 'Provides a platform to students interested in the field of Data Analytics to discuss this vast field under one umbrella.', 'LN202040'); 

INSERT INTO CLUB VALUES ('CL202313', 'Community Service Club', 'Epsilon Room', 'Voluntary nonprofit organization where members of the ASB meet to perform charitable projects. ', 'LN202044'); 

  

/*TABLE REGISTRATION rows*/ 

INSERT INTO REGISTRATION VALUES ('#REG23010', 'Approved', '2023-01-15', 'STU2020011', 'LN202018', 'CL202205');

INSERT INTO REGISTRATION VALUES ('#REG23011', 'Rejected', '2023-02-01', 'STU2020005', 'LN202025', 'CL202209');

INSERT INTO REGISTRATION VALUES ('#REG23012', 'Approved', '2023-03-01', 'STU2021018', 'LN202018', 'CL202311');

INSERT INTO REGISTRATION VALUES ('#REG23013', 'Pending', '2023-04-05', 'STU2021022', 'LN202020', 'CL202311');

INSERT INTO REGISTRATION VALUES ('#REG23014', 'Approved', '2023-05-20', 'STU2023004', 'LN202025', 'CL202209');

INSERT INTO REGISTRATION VALUES ('#REG23015', 'Pending', '2023-06-08', 'STU2020020', 'LN202018', 'CL202311');

INSERT INTO REGISTRATION VALUES ('#REG23016', 'Approved', '2023-07-15', 'STU2019031', 'LN202018', 'CL202311');

INSERT INTO REGISTRATION VALUES ('#REG23017', 'Pending', '2023-08-02', 'STU2022001', 'LN202025', 'CL202209');

INSERT INTO REGISTRATION VALUES ('#REG23018', 'Rejected', '2023-09-18', 'STU2022008', 'LN202025', 'CL202209');

INSERT INTO REGISTRATION VALUES ('#REG23019', 'Pending', '2023-10-12', 'STU2022023', 'LN202040', 'CL202312');

INSERT INTO REGISTRATION VALUES ('#REG23020', 'Approved', '2023-11-04', 'STU2021015', 'LN202021', 'CL202208');

INSERT INTO REGISTRATION VALUES ('#REG23021', 'Pending', '2023-11-12', 'STU2019027', 'LN202021', 'CL202208');

INSERT INTO REGISTRATION VALUES ('#REG23022', 'Pending', '2023-11-27', 'STU2022021', 'LN202021', 'CL202208');

INSERT INTO REGISTRATION VALUES ('#REG23023', 'Approved', '2023-12-02', 'STU2022034', 'LN202039', 'CL202205');

INSERT INTO REGISTRATION VALUES ('#REG23024', 'Approved', '2023-12-19', 'STU2019010', 'LN202039', 'CL202205');

INSERT INTO REGISTRATION VALUES ('#REG23025', 'Pending', '2023-12-31', 'STU2019016', 'LN202040', 'CL202312');

INSERT INTO REGISTRATION VALUES ('#REG24026', 'Pending', '2024-01-02', 'STU2020006', 'LN202020', 'CL202310');

INSERT INTO REGISTRATION VALUES ('#REG24027', 'Pending', '2024-02-12', 'STU2021033', 'LN202044', 'CL202313');

INSERT INTO REGISTRATION VALUES ('#REG24028', 'Approved', '2024-02-19', 'STU2019024', 'LN202020', 'CL202310');

INSERT INTO REGISTRATION VALUES ('#REG24029', 'Approved', '2024-03-10', 'STU2020013', 'LN202040', 'CL202312');

INSERT INTO REGISTRATION VALUES ('#REG24030', 'Approved', '2024-03-18', 'STU2021029', 'LN202044', 'CL202313');

INSERT INTO REGISTRATION VALUES ('#REG24031', 'Approved', '2024-03-21', 'STU2019010', 'LN202018', 'CL202311');
