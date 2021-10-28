/*
Author: Bruno Freitas W0448225
Date: 2021-10-25
*/

/*Creating database*/
DROP DATABASE IF EXISTS DrPhilHarmonic;
CREATE DATABASE DrPhilHarmonic;

/*Using the database just created*/
USE DrPhilHarmonic;

/*Task 1 - Creating tables*/

/*Creating the Instructor table*/
CREATE TABLE Instructor (
    instructorID int PRIMARY KEY AUTO_INCREMENT,
    employeeID int not null,
    name text not null,
    officeLocation text not null,
    phoneNumber int UNIQUE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Creating the Student table*/
CREATE TABLE Student (
    studentID int PRIMARY KEY AUTO_INCREMENT,
    studentNumber int not null,
    name text not null,
    dormRoom int,
    phoneNumber int not null UNIQUE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Creating the Course table*/
CREATE TABLE Course (
    courseID int PRIMARY KEY AUTO_INCREMENT,
    courseCode int not null,
    title text not null,
    creditHours int not null
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Creating the Section table*/
CREATE TABLE Section (
    sectionID int PRIMARY KEY AUTO_INCREMENT,
    instructorID int not NULL,
    courseID int not NULL,
    callNumber INT,
    CONSTRAINT FOREIGN KEY (instructorID) REFERENCES Instructor(instructorID),
	CONSTRAINT FOREIGN KEY (courseID) REFERENCES Course(courseID)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Creating the Section table*/
CREATE TABLE Class (
    classID int PRIMARY KEY AUTO_INCREMENT,
    sectionID int not null,
    studentID int not null,
    classSchedule int not null,
    term int not null,
    CONSTRAINT FOREIGN KEY (sectionID) REFERENCES Section(sectionID),
    CONSTRAINT FOREIGN KEY (studentID) REFERENCES Student(studentID)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Creating the Grade table*/
CREATE TABLE Grade (
    classID int,
    studentID int not null,
    grade int CHECK (grade >=0 && grade <=100)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Alter Table*/
ALTER TABLE Grade ADD CONSTRAINT FOREIGN KEY (classID) REFERENCES Class(classID);
ALTER TABLE Grade ADD CONSTRAINT FOREIGN KEY (studentID) REFERENCES Student(studentID);