DROP DATABASE  STUDENTMANAGEMENT;
CREATE DATABASE STUDENTMANAGEMENT;
USE STUDENTMANAGEMENT;

---  DATABASE SETUP

CREATE TABLE Student(
StudentID INT,
Name varchar(20)
);


Create Table Scores (
StudentID INT,
Subject varchar(30),
Score INT);
 
  ---- POpulate  Table
 
 
 insert into Student 
 Values
 (101,'Ram'),
 (102,'Siya'),
 (103,'Krishna');
 
 
 insert into Scores 
 Values
 (101,'Math',70),
 (101,'English',77),
 (102,'Math',88),
 (102,'English',79),
 (103,'Math',89),
 (103,'English',97);
 
 
 
 Select * from Student;
 
 Select * from Scores;
 
 
 
 ---- Create a view For Student_Scores
 

 CREATE VIEW Student_Scores  AS 
 SELECT s.StudentID, s.Name, sc.Subject, sc.Score
 FRom Student s, Scores sc
 where s.STudentID = sc.StudentID;
 
 Select * from Student_Scores;
 
 
 ---- Create a view for Student Who Passed All Subjects
 
 ---- This view displays only those students who passed all subjects by excluding any student who scored less than 40 in any subject.
 
 
 Create View passed_Students AS
 select StudentID,name  From student
 Where StudentID Not IN (
 Select StudentID FRom Scores 
 Where Score < 40
 );
 
 Select * from Passed_Students;
 
 
 
 
 