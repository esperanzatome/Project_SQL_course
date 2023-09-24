CREATE SCHEMA `university`;

CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `professors` (
  `professor_id` int NOT NULL,
  `professor_name` varchar(45) NOT NULL,
  UNIQUE KEY `professor_id_UNIQUE` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `courses` (
  `course_name` varchar(45) NOT NULL,
  `course_students_id` int DEFAULT NULL,
  `course_professors_id` int DEFAULT NULL,
  KEY `course_students_id_idx` (`course_students_id`),
  KEY `course_professor_id_idx` (`course_professors_id`),
  KEY `course_name_idx` (`course_name`),
  CONSTRAINT `professor_id` FOREIGN KEY (`course_professors_id`) REFERENCES `professors` (`professor_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`course_students_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `grades` (
  `grade_name` decimal(4,2) DEFAULT NULL,
  `grade_courses_name` varchar(45) DEFAULT NULL,
  `grade_professors_id` int DEFAULT NULL,
  `grade_student_id` int DEFAULT NULL,
  KEY `grade_student_id` (`grade_student_id`),
  KEY `grade_professor_id_idx` (`grade_professors_id`),
  KEY `grade_courses_name_idx` (`grade_courses_name`),
  CONSTRAINT `grade_professor_id` FOREIGN KEY (`grade_professors_id`) REFERENCES `professors` (`professor_id`),
  CONSTRAINT `grade_student_id` FOREIGN KEY (`grade_student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `grade_courses_name` FOREIGN KEY (`grade_courses_name`) REFERENCES `courses` (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `university`.`students` (`student_id`, `student_name`) VALUES ('1', 'María M');
INSERT INTO `university`.`students` (`student_id`, `student_name`) VALUES ('2', 'Alicia P');
INSERT INTO `university`.`students` (`student_id`, `student_name`) VALUES ('3', 'Verónica C');
INSERT INTO `university`.`students` (`student_id`, `student_name`) VALUES ('4', 'Carolina T');
INSERT INTO `university`.`students` (`student_id`, `student_name`) VALUES ('5', 'Pedro P');

INSERT INTO `university`.`professors` (`professor_id`, `professor_name`) VALUES ('1', 'Benito Lertxundi');
INSERT INTO `university`.`professors` (`professor_id`, `professor_name`) VALUES ('2', 'Katerina Parda');

INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 1',1,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 1',2,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 2',3,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 2',4,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 1',5,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 2',1,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 2',2,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 1',3,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 1',4,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 2',5,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 3',1,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 3',4,1);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 4',4,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 4',5,2);
INSERT INTO `university`.`courses`(`course_name`,`course_students_id`,`course_professors_id`)VALUES('Programing 5',5,2);

INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(5.00,1,1,'Programing 1');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(6.54,1,2,'Programing 1');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(7.94,2,3,'Programing 2');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(4.99,2,4,'Programing 2');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(7.87,1,5,'Programing 1');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(7.89,2,1,'Programing 2');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(4.89,2,2,'Programing 2');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(3.76,1,3,'Programing 1');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(10.00,1,4,'Programing 1');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(5.50,2,5,'Programing 2');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(5.78,1,1,'Programing 3');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(6.50,1,4,'Programing 3');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(6.15,2,4,'Programing 4');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(3.50,2,5,'Programing 4');
INSERT INTO `university`.`grades`(`grade_name`,`grade_professors_id`,`grade_student_id`,`grade_courses_name`)VALUES(3.98,2,5,'Programing 5');

SELECT professor_name, AVG(grade_name) as average_grade
FROM grades
RIGHT JOIN professors
ON grades.grade_professors_id=professors.professor_id
GROUP BY professor_name;

SELECT student_name, MAX(grade_name)
FROM grades
RIGHT JOIN students
ON grades.grade_student_id=students.student_id
GROUP BY student_name;

SELECT course_name, student_name
FROM courses
RIGHT JOIN students
ON courses.course_students_id=students.student_id
ORDER BY course_name;

SELECT grade_courses_name, AVG(grade_name)
FROM grades
GROUP BY grade_courses_name
ORDER BY AVG(grade_name)ASC;

SELECT student_name,professor_name,MAX(total)
FROM (
			SELECT course_students_id,course_professors_id, COUNT(course_name) AS total
			FROM courses
			GROUP BY course_students_id,course_professors_id)
            AS totals
RIGHT JOIN students
ON totals.course_students_id=students.student_id
RIGHT JOIN professors
ON totals.course_professors_id=professors.professor_id
GROUP BY student_name,professor_name
ORDER BY MAX(total) DESC LIMIT 1