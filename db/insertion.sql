-- add users
insert into user values('justin@gmail.com', 'abc123', 'Justin', 'Yang', '1990-1-1', '', 'java, c++');
insert into user values('mike@gmail.com', 'abc123', 'Mike', 'Jackson', '1990-1-1', '', '');
insert into user values('tom@gmail.com', 'abc123', 'tom', 'Green', '1990-1-1', '', '');
insert into user values('peter@gmail.com', 'abc123', 'peter', 'Wood', '1990-1-1', '', '');
insert into user values('jakie@gmail.com', 'abc123', 'jakie', 'chen', '1990-1-1', '', '');

-- add jobs
insert into job values(1, 'justin@gmail.com', 'Cloud Platform Engineer', 'USA-California-Mountain View', 'Google', '', '', '2014-10-1', 'Fulltime', '', '', 'java, hadoop, AWS');
insert into job values(2, 'justin@gmail.com', 'Software Engineer', 'USA-California-Mountain View', 'Google', '', '', '2014-11-1', 'Fulltime', '', '', 'C++, java, python');
insert into job values(3, 'justin@gmail.com', 'PHP Engineer', 'USA-California-Mountain View', 'Google', '', '', '2014-10-20', 'Fulltime', '', '', 'php, javascript');
insert into job values(4, 'mike@gmail.com', 'Software Engineer', 'USA-California-Sunnyvale', 'Yahoo', '', '', '2014-12-1', 'Fulltime', '', '', 'java, C++');
insert into job values(5, 'mike@gmail.com', 'Software Engineer', 'USA-California-Sunnyvale', 'Yahoo', '', '', '2014-11-1', 'Fulltime', '', '', 'C++, java, python');
insert into job values(6, 'mike@gmail.com', 'QA Engineer', 'USA-California-Sunnyvale', 'Yahoo', '', '', '2014-11-1', 'Fulltime', '', '', 'bugzilla, perl');
insert into job values(7, 'tom@gmail.com', 'Sales Manager', 'USA-California-Redwood City', 'Honda', '', '', '2014-11-1', 'Fulltime', '', '', 'Economics, Google Analytics, MicroStrategy');
insert into job values(8, 'peter@gmail.com', 'Software Engineer', 'USA-California-Cupertino', 'Facebook', '', '', '2014-12-1', 'Fulltime', '', '', 'java, C++');
insert into job values(9, 'peter@gmail.com', 'Frontend Engineer', 'USA-California-Cupertino', 'Facebook', '', '', '2014-11-1', 'Fulltime', '', '', 'php, symphony, javascript');
insert into job values(10, 'peter@gmail.com', 'Product Manager', 'USA-California-Cupertino', 'Facebook', '', '', '2014-11-1', 'Fulltime', '', '', 'User Experience');
insert into job values(11, 'jakie@gmail.com', 'Backend Engineer', 'USA-California-Cupertino', 'Facebook', '', '', '2014-11-1', 'Fulltime', '', '', 'java, C++, ');
insert into job values(12, 'jakie@gmail.com', 'Big Data Manager', 'USA-California-Cupertino', 'Facebook', '', '', '2014-11-1', 'Fulltime', '', '', 'Hadoop, Machine Learning');




-- add Follows
insert into Follows values('justin@gmail.com', 'mike@gmail.com', 'Default');
insert into Follows values('justin@gmail.com', 'jakie@gmail.com', 'Default');

insert into Follows values('mike@gmail.com', 'peter@gmail.com', 'Default');
insert into Follows values('mike@gmail.com', 'tom@gmail.com', 'Default');
insert into Follows values('mike@gmail.com', 'jakie@gmail.com', 'Default');
insert into Follows values('mike@gmail.com', 'justin@gmail.com', 'Default');

insert into Follows values('jakie@gmail.com', 'tom@gmail.com', 'Default');