create database student;
use student;
show databases;
create table student_details(studentid int,studentname varchar(20),
studentrollno varchar(20),studentage int,studentph int,primary key(studentid));

insert into student_details(studentid,studentname,studentrollno,studentage,studentph)
values(1,"brindha","21CS001",20,5680),
      (2,"Manosri G J","21CS002",21,5689),
      (3,"Lalitha D","21CS003",20,4567),
      (4,"Sownd D","21CS004",20,4527);
select*from student_details;
create table course_details(id int,courseid int,coursename varchar(30),primary key(id),
foreign key(courseid)references student_details(studentid));

use student;
insert into course_details(id,courseid,coursename)
values (1,1,"cse"),(2,2,"ece"),(3,3,"cse"),(4,4,"it");
select * from course_details;

use student;
create table lecture_details(id int,
lecturename varchar(20),lec_courseid int,
lectureno int,primary key(id),foreign key(lec_courseid) references course_details(id));

insert into lecture_details(id,lecturename,lec_courseid,lectureno)values(1001,"riya",1,90909),
(1002,"nivi",2,98989),
(1003,"susi",3,80808),
(1004,"priya",4,70707);

use student;
create table semester_details( semid int,semname varchar(5),courseid int,lid int,sid int,primary key(semid),foreign key(courseid) references course_details(id),
foreign key(lid) references lecture_details(id),foreign key(sid) references student_details(studentid));

 insert into semester_details(semid,semname,courseid,lid,sid)
 values(001,"one",1,1001,1),
 (002,"two",2,1002,2),
 (003,"three",3,1003,3),
 (004,"four",4,1004,4);
 
 use student;
 create table grade_details(gid int,sid int,cid int,percent int,primary key(gid),
 foreign key(sid) references student_details(studentid),
 foreign key(cid) references course_details(id));
 
 insert into grade_details(gid,sid,cid,percent)
values(01,1,1,90),(02,2,2,87),(03,3,3,88),(04,4,4,87);

select*from student_details;
select*from course_details;
select*from lecture_details;
select*from semester_details;
select*from grade_details;




