
create database if not exists `tracnghiemonline11`;

USE `tracnghiemonline11`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `classId` int(11) NOT NULL,
  `className` varchar(100) character set utf8 default NULL,
  PRIMARY KEY  (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `class` */

insert  into `class`(`classId`,`className`) values (1,'1511C'),(2,'155B'),(3,'1510D'),(4,'1521E');

/*Table structure for table `document` */

DROP TABLE IF EXISTS `document`;

CREATE TABLE `document` (
  `documentId` int(11) NOT NULL,
  `image` varchar(500) default NULL,
  `title` varchar(500) character set utf8 default NULL,
  `link` varchar(500) default NULL,
  PRIMARY KEY  (`documentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document` */

insert  into `document`(`documentId`,`image`,`title`,`link`) values (1,'image/mang.jpg','Đề thi thử môn mạng máy tính căn bản cho sinh viên ngành công nghệ thông tin (2017)','http://chiasenhac.vn/nhac-hot/nam-ay~duc-phuc~tsvcqdswqvem49.html'),(2,'image/IELTS.jpg','Các Nguồn Thi Thử IELTS Online Miễn Phí','http://chiasenhac.vn/nhac-hot/da-lo-yeu-em-nhieu~justatee~tsvd07cqqmntve.html'),(3,'image/ktmtOn.jpg','Tài liệu ôn thi môn máy tính và hợp ngữ cho sinh viên công nghệ thông tin (2017)','http://chiasenhac.vn/nhac-hot/song-xa-anh-chang-de-dang~bao-anh~tsvdzs56qm14hk.html'),(4,'image/vldc1.jpg','Tài liệu ôn thi vật lý đại cương 1 (2017)','http://chiasenhac.vn/nhac-hot/they-said~binz-touliver~tsvctzmrqvf18a.html'),(5,'image/kientrucmt.jpg','Đề thi thử môn kiến trúc máy tính và hợp ngữ cho sinh viên công nghệ thông tin (2017)','http://chiasenhac.vn/nhac-hot/1-phut~andiez~tsvcqd0rqvemna.html'),(6,'image/TNThue.png','Tập hợp các câu hỏi thi trắc nghiệm nghiệp vụ chuyên ngành thuế(2017)','http://chiasenhac.vn/nhac-hot/mama-2017-mashup~duc-phuc-hoa-minzy-erik~tsvctwtbqvf9fq.html'),(7,'image/gt2.jpg','Tài liệu ôn tập môn giải tích 2 (2017)','http://chiasenhac.vn/nhac-hot/yeu-chua-bao-gio-la-sai~erik~tsvct7d6qvftmk.html');

/*Table structure for table `exam` */

DROP TABLE IF EXISTS `exam`;

CREATE TABLE `exam` (
  `examId` int(11) NOT NULL auto_increment,
  `examName` varchar(255) character set utf8 default NULL,
  `textId` int(11) default NULL,
  `examDate` date default NULL,
  `username` varchar(100) default NULL,
  PRIMARY KEY  (`examId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `exam` */

insert  into `exam`(`examId`,`examName`,`textId`,`examDate`,`username`) values (1,'thi giua ky',1,'2013-01-01','15110280'),(2,'thi cuoi ky',2,'2015-01-01','15110292'),(3,'thi toic',3,'2014-01-01','15110211'),(4,'thi dau ky',4,'2016-01-01','15110200');

/*Table structure for table `exam_class` */

DROP TABLE IF EXISTS `exam_class`;

CREATE TABLE `exam_class` (
  `examId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  PRIMARY KEY  (`examId`,`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exam_class` */

insert  into `exam_class`(`examId`,`classId`) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1);

/*Table structure for table `mark` */

DROP TABLE IF EXISTS `mark`;

CREATE TABLE `mark` (
  `userId` varchar(100) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `mark` int(11) default NULL,
  PRIMARY KEY  (`userId`,`subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mark` */

insert  into `mark`(`userId`,`subjectId`,`mark`) values ('123',2,4),('123',4,9),('15110280',2,6),('15110280',4,8),('15110292',3,10);

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `noticeId` int(255) NOT NULL auto_increment,
  `title` varchar(255) character set utf8 default NULL,
  `noticeContent` varchar(255) character set utf8 default NULL,
  `enclosedd` varchar(255) character set utf8 default NULL,
  `timeNotice` date default NULL,
  `image` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `notice` */

insert  into `notice`(`noticeId`,`title`,`noticeContent`,`enclosedd`,`timeNotice`,`image`) values (2,'Lễ trao học bổng PANASONIC 2017',NULL,'','2013-02-02','image/HBpanasonic.jpg'),(3,'Sinh viên đạt giải 3 Kỳ thi Olympic Toán sinh viên toàn quốc 2014',NULL,NULL,'2013-01-01','image/olympic.jpg'),(4,'kỷ niệm 65 năm ngày Truyền thống Học sinh – Sinh viên (9/1/1950 – 9/1/2015)',NULL,'http://feee.hcmute.edu.vn/ArticleId/dfb13c95-4eb5-4daf-b232-a39fb76bccdc/lien-chi-hoi-dien-dien-tu-dat-tap-the-sinh-vien-5-tot-nam-hoc-2013-2014','2013-02-02','image/nam65.jpg'),(5,'Hội thảo Khoa học Kỹ thuật & Công nghệ xanh lần 7',NULL,'https://hcmute.edu.vn/ArticleId/4a6ea32b-bd7c-49d2-b594-47f228ffe3ea/hoi-thao-khoa-hoc-ky-thuat-cong-nghe-xanh-lan-7','2013-03-03','image/hoithao.jpg'),(6,' HCMUTE khai trương Thư viện chất lượng cao cho sinh viên nghỉ trưa đọc sách, nằm võng',NULL,'https://hcmute.edu.vn/ArticleId/e2a33aea-e5d6-4f7b-afa3-0151818c0b89/hcmute-khai-truong-thu-vien-chat-luong-cao-cho-sinh-vien-nghi-trua-doc-sach-nam-vong',NULL,'image/thuvien.jpg'),(7,'Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh hành trình 55 năm: Đoàn kết, sáng tạo và hội nhập',NULL,'https://hcmute.edu.vn/ArticleId/28818959-1b7b-4927-b9a0-29d6d3213f72/dai-hoc-su-pham-ky-thuat-tp-ho-chi-minh-hanh-trinh-55-nam-doan-ket-sang-tao-va-hoi-nhap',NULL,'image/aaa.jpg'),(8,'Hoa hậu Ngọc Duyên trao vương miện cho Hoa khôi Đại học Sư phạm Kỹ Thuật TP HCM',NULL,'http://yeah1.com/sao/hoa-hau-ngoc-duyen-trao-vuong-mien-cho-hoa-khoi-dai-hoc-su-pham-ky-thuat-tp-hcm.html','2015-01-01','image/hochau.jpg'),(9,'Sáng 17-6, Trường ĐH Sư phạm Kỹ thuật TP HCM đã công bố quyết định của Bộ trưởng Bộ GD-ĐT về việc bổ nhiệm PGS-TS Đỗ Văn Dũng làm Hiệu trưởng nhà trường nhiệm kỳ 2013-2018',NULL,'http://nld.com.vn/giao-duc-khoa-hoc/truong-dh-su-pham-ky-thuat-tp-hcm-co-hieu-truong-moi-20130617020720507.htm','2017-01-01','image/hieutruong.jpg'),(14,'15110201','123','Ng','2003-11-02','image/anh3.jpg');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `questionId` int(11) NOT NULL auto_increment,
  `questionContent` varchar(500) character set utf8 default NULL,
  `questionGroup` int(11) NOT NULL,
  `userId` varchar(50) default NULL,
  PRIMARY KEY  (`questionId`),
  KEY `FK_question1` (`questionGroup`),
  KEY `FK_question` (`userId`),
  CONSTRAINT `FK_question` FOREIGN KEY (`userId`) REFERENCES `user` (`username`) ON DELETE CASCADE,
  CONSTRAINT `FK_question1` FOREIGN KEY (`questionGroup`) REFERENCES `questiongroup` (`questionGroupId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`questionId`,`questionContent`,`questionGroup`,`userId`) values (6,'who?',4,'15110280'),(7,'what?',10,'15110280'),(8,'where?',11,'15110292'),(9,'how?',15,'15110292');

/*Table structure for table `question_answer` */

DROP TABLE IF EXISTS `question_answer`;

CREATE TABLE `question_answer` (
  `answerId` int(11) NOT NULL auto_increment,
  `answerName` varchar(500) character set utf8 default NULL,
  `questionId` int(11) default NULL,
  `answerConrrect` tinyint(1) default NULL,
  PRIMARY KEY  (`answerId`),
  KEY `FK_question_answer` (`questionId`),
  CONSTRAINT `FK_question_answer` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `question_answer` */

insert  into `question_answer`(`answerId`,`answerName`,`questionId`,`answerConrrect`) values (1,'quang oppa?',6,1),(2,'quang always alright',7,1),(3,'phúc diu',8,1),(4,'phúc co',9,1);

/*Table structure for table `questiongroup` */

DROP TABLE IF EXISTS `questiongroup`;

CREATE TABLE `questiongroup` (
  `questionGroupId` int(11) NOT NULL auto_increment,
  `questionGroupName` varchar(255) character set utf8 NOT NULL,
  `subjectId` int(11) NOT NULL,
  PRIMARY KEY  (`questionGroupId`),
  KEY `FK_questiongroup` (`subjectId`),
  CONSTRAINT `FK_questiongroup` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`subjectId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `questiongroup` */

insert  into `questiongroup`(`questionGroupId`,`questionGroupName`,`subjectId`) values (4,'Vật lý đại cương',2),(10,'CNPM',4),(11,'autoout',4),(15,'lý thuyết đồ thị',2);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL auto_increment,
  `roleName` varchar(50) character set utf8 NOT NULL,
  PRIMARY KEY  (`idRole`),
  UNIQUE KEY `rolename` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`idRole`,`roleName`) values (4,'Admin'),(3,'Học viên'),(1,'Người quản lý câu hỏi'),(2,'Người quản lý đề thi');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subjectId` int(255) NOT NULL auto_increment,
  `subjectName` varchar(255) character set utf8 NOT NULL,
  PRIMARY KEY  (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1111128 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`subjectId`,`subjectName`) values (2,'Toán rời rạc'),(4,'Giải tích 1'),(1111114,'Giải tích 2'),(1111117,'Giải tích 3'),(1111124,'Mạng căn bản'),(1111125,'KTMT&HN'),(1111126,'AutoPass');

/*Table structure for table `text` */

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `textId` int(11) NOT NULL auto_increment,
  `textName` varchar(255) character set utf8 default NULL,
  `textTime` int(11) default NULL,
  `userId` varchar(100) default NULL,
  PRIMARY KEY  (`textId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `text` */

insert  into `text`(`textId`,`textName`,`textTime`,`userId`) values (1,'KTMT&HN',60,'15110280'),(2,'Vật lý đại cương',120,'15110292'),(3,'Toán rời rạc',90,'123');

/*Table structure for table `text_question` */

DROP TABLE IF EXISTS `text_question`;

CREATE TABLE `text_question` (
  `questionId` int(11) NOT NULL,
  `textId` int(11) NOT NULL,
  PRIMARY KEY  (`questionId`,`textId`),
  KEY `FK_text_question1` (`textId`),
  CONSTRAINT `FK_text_question` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE CASCADE,
  CONSTRAINT `FK_text_question1` FOREIGN KEY (`textId`) REFERENCES `text` (`textId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `text_question` */

insert  into `text_question`(`questionId`,`textId`) values (6,1),(7,1),(9,1),(6,2),(8,2),(7,3),(8,3);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `fullname` varchar(50) character set utf8 default NULL,
  `sex` varchar(3) character set utf8 default NULL,
  `Birthday` date default NULL,
  `Phone` varchar(12) default NULL,
  `avatar` varchar(225) default NULL,
  `Role` int(11) default NULL,
  `class` int(11) default NULL,
  PRIMARY KEY  (`username`),
  KEY `FK_user` (`Role`),
  CONSTRAINT `FK_user` FOREIGN KEY (`Role`) REFERENCES `role` (`idRole`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`Password`,`fullname`,`sex`,`Birthday`,`Phone`,`avatar`,`Role`,`class`) values ('123','123','SS','Nam','2013-01-01','0211111111','',3,1),('151000','123','Phung Duc Quang','Nam','2005-11-02','0991578455','image/anh3.jpg',2,-1),('1510000','123','Nguyễn Thị Hiền1122','Nữ','2003-11-02','0991578455','image/anh3.jpg',2,-1),('1511','123','Trần Nguyễn Thanh Như Ý','Nữ','1995-01-01','0123577485','image/anh4.jpg',2,-1),('15110201','123','Nguyễn Thị Hiền11','Nữ','2003-11-02','099157845500','image/anh3.jpg',2,-1),('15110280','123','Ông Thị Diễm Phúc','Nữ','2015-01-01','0971777095','image/anh11.jpg',4,-1),('15110292','123','Nguyễn Thị Thu Ba','Nam','2017-01-01','0124754878','image/anh4.jpg',1,-1),('15111111','123','Lê Thị Diễm My','Nữ','1999-04-07','0921458785','image/anh2.jpg',3,1),('15112451','123','Lê Thị Huyền Trân','Nữ','2013-01-01','0123456778','',1,-1),('15112521','123','Trần Văn Ba','Nam','2016-01-01','0168745844','image/anh2.jpg',3,2),('151515','123','haha','Nữ','2013-01-01','2222222','',3,-1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
