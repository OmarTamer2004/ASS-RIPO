CREATE TABLE university (
    faculty_name VARCHAR(800) NOT NULL,
    faculty_years INT NULL,
    CONSTRAINT university_pk PRIMARY KEY (faculty_name)
);

CREATE TABLE faculty (
    faculty_name VARCHAR(MAX) NOT NULL,
    student_id INT,
    student_name VARCHAR(MAX),
);
alter table faculty
alter column student_id varchar(500);
ALTER TABLE university 
ADD faculty_num INT;
alter table university 
add constraint nuiversity_faculty_fk foreign key (faculty_name)
references university (faculty_name);
exec sp_rename 'faculty.faculty_name','faculty_n','column';
create table faculty_staff
( dr_name varchar (8000) null,
dr_subject varchar (100) null,
dr_for_year int ,
subject_code varchar(15),
faculty_name varchar(max),
 )
 alter table faculty_staff
 alter column faculty_name varchar(max)not null;
 --alter table faculty_staff
 --add constraint faculty_name primary key;
-- ALTER TABLE faculty_staff
--ADD CONSTRAINT faculty_faculty_staff_fk FOREIGN KEY (faculty_name)
--REFERENCES faculty (faculty_n); 