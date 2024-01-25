CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`address_id`)
);
CREATE TABLE `category` (
  `Category_id` int NOT NULL,
  `Category Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Category_id`)
);

CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `first name` varchar(100) NOT NULL,
  `last name` varchar(100) NOT NULL,
  `date of birth` date NOT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `Student_address` (`address_id`),
  CONSTRAINT `Student_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
);

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `subject name` varchar(100) NOT NULL,
  `category_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `University_id` int DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `category` (`category_id`),
  KEY `Teacher` (`teacher_id`),
  KEY `university` (`University_id`),
  CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `category` (`Category_id`),
  CONSTRAINT `Teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  CONSTRAINT `university` FOREIGN KEY (`University_id`) REFERENCES `university` (`University_id`)
);

CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `First name` varchar(100) NOT NULL,
  `Last name` varchar(100) NOT NULL,
  `date of birth` date NOT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `address` (`address_id`),
  CONSTRAINT `address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
);

CREATE TABLE `university` (
  `University_id` int NOT NULL,
  `university name` varchar(100) DEFAULT NULL,
  `adress_id` int NOT NULL,
  PRIMARY KEY (`University_id`),
  KEY `UNI_address` (`adress_id`),
  CONSTRAINT `UNI_address` FOREIGN KEY (`adress_id`) REFERENCES `address` (`address_id`)
);