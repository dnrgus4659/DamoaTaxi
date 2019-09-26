show tables;

create table board(
    num int not null primary key auto_increment,
    writer varchar(10) not null,
    email varchar(30),
    subject varchar(50) not null,
    passwd varchar(12) not null,
    reg_date datetime not null,
    readcount int default 0,
    ref int not null,
    re_step smallint not null,
    re_level smallint not null,
    content text not null,
    ip varchar(20) not null
 );
 
create table review_board(
	userID varchar(20),
	boardID int primary key,
	boardTitle varchar(50),
	boardContent varchar(2048),
	boardDate DATETIME,
	boardHit INT,
	boardFile varchar(100),
	boardRealFile varchar(100),
	boardGroup INT,
	boardSequence INT,
	boardLevel INT
);

create table notice_board(
	num int not null primary key auto_increment,
    subject varchar(50) not null,
    reg_date datetime not null,
    content text not null,
    hit int not null
);

create table comment(
    num int not null primary key auto_increment,
    boardID int not null,
    id varchar(25) not null,
    content varchar(2000) not null,
    reg_date datetime not null default now(),
    ref int not null,
    re_step smallint not null,
    re_level smallint not null
 );
 

drop table comment;
desc comment;
select * from comment;
select * from board;
select * from review_board;
drop table review_board;



drop table board;
desc board;
select * from board;

show databases;
drop database basicjsp;
use 2019_2A01_DamoaTaxi;

show tables;

create table zipcode(
	ZIPCODE varchar(100) not null,
	SIDO varchar(100) not null,
	GUGUN varchar(200) not null,
	DONG varchar(200) not null,
	RI varchar(500) null,
	BUNJI varchar(300) null,
	SEQ int null
);
create table dorozipcode(
	ZIPCODE varchar(100) not null,
	SIDO varchar(100) not null,
	GUGUN varchar(200) not null,
	EUP varchar(200) not null,
	RO varchar(500) null,
	SNUM varchar(300) null,
	ENUM int null
);

create table zipcode(
	ZIPCODE varchar(30) not null,
	SIDO varchar(100) not null,
	GUGUN varchar(200) not null,
	DONG varchar(200) not null,
	GITA varchar(500) null,
	DOROSIDO varchar(100) not null,
	DOROGUGUN varchar(200) not null,
	DORO varchar(200) not null,
	DOROBUNHO varchar(500) null,
	DOROGITA1 varchar(500) null,
	DOROGITA2 varchar(500) null
);

/*우편번호 데이터베이스에 입력문*/
GRANT ALL privileges ON 2019_2A01_DamoaTaxi.* TO 'jspid'@'localhost' IDENTIFIED BY 'jsppass';
LOAD DATA LOCAL INFILE 'c:\\dorozipcode.txt' INTO TABLE zipcode (ZIPCODE, SIDO, GUGUN, DONG, GITA, DOROSIDO, DOROGUGUN, DORO, DOROBUNHO, DOROGITA1, DOROGITA2);


desc zipcode;

select * from zipcode;
select * from dorozipcode;

delete from zipcode;
drop table zipcode;
drop table dorozipcode;

select * from impairment_member;
-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.
drop table impairment_member;
delete from impairment_member where impairment_ID="asd";
-- impairment_member Table Create SQL

CREATE TABLE impairment_member
(
    `impairment_ID`              VARCHAR(25)     NOT NULL    COMMENT '최소 4자리 이상', 
    `impairment_Password`        VARCHAR(25)     NOT NULL    COMMENT '특수문자, 숫자, 영어 섞음',  
    `impairment_name`            VARCHAR(25)     NOT NULL    COMMENT '이름', 
    `impairment_phone_number`    VARCHAR(13)     NOT NULL    COMMENT '000-0000-0000 방식', 
    `impairment_email`           VARCHAR(32)     NOT NULL    COMMENT 'xxxxxxxxxxxxxxxxxxxx@xxxxxxx.xxx 방식', 
    `impairment_certificate`     LONGBLOB        NOT NULL    COMMENT '장애인 인증서', 
    `impairment_point`           INT             NULL        COMMENT '다모아포인트', 
    `impairment_zipcode`         VARCHAR(7)      NOT NULL    COMMENT 'XXX-XXX 방식', 
    `impairment_address`         VARCHAR(300)    NOT NULL    COMMENT '주소',
    `impairment_category`        VARCHAR(5)      NOT NULL    COMMENT 'I'
);

ALTER TABLE impairment_member COMMENT '장애인택시 고객으로 회원가입후 저장되는 테이블';
select travel_member.travel_ID as id, travel_member.travel_Password as pw from travel_member where travel_member.travel_ID="dnrgus4659" union select impairment_member.impairment_ID as id, impairment_member.impairment_Password as pw from impairment_member where impairment_member.impairment_ID="dnrgus4659";
select * from travel_member;
drop table travel_member;
-- impairment_member Table Create SQL
delete from travel_member where travel_ID='sdf';

CREATE TABLE travel_member
(
    `travel_ID`              VARCHAR(25)     NOT NULL    COMMENT '최소 4자리 이상', 
    `travel_Password`        VARCHAR(25)     NOT NULL    COMMENT '특수문자, 숫자, 영어 섞음',  
    `travel_name`            VARCHAR(25)     NOT NULL    COMMENT '이름', 
    `travel_phone_number`    VARCHAR(13)     NOT NULL    COMMENT '000-0000-0000 방식', 
    `travel_email`           VARCHAR(32)     NOT NULL    COMMENT 'xxxxxxxxxxxxxxxxxxxx@xxxxxxx.xxx 방식', 
    `travel_point`           INT             NULL        COMMENT '다모아포인트', 
    `travel_zipcode`         VARCHAR(7)      NOT NULL    COMMENT 'XXX-XXX 방식', 
    `travel_address`         VARCHAR(300)    NOT NULL    COMMENT '주소',
    `travel_category`        VARCHAR(5)      NOT NULL    COMMENT 'T'
);

ALTER TABLE travel_member COMMENT '관광택시 고객으로 회원가입후 저장되는 테이블';


-- impairment_member Table Create SQL
CREATE TABLE impairment_reservation
(
    `impairment_name`              VARCHAR(25)      NOT NULL    COMMENT '이름', 
    `impairment_reservation_time`  DATETIME         NOT NULL    COMMENT '예약시간', 
    `impairment_start_address`     VARCHAR(40)      NOT NULL    COMMENT '출발주소', 
    `impairment_arrive_address`    VARCHAR(40)      NOT NULL    COMMENT '도착주소', 
    `impairment_driver_name`       VARCHAR(25)      NOT NULL    COMMENT '장애인 택시 기사 이름', 
    `impairment_phone_number`      VARCHAR(13)      NOT NULL    COMMENT '000-0000-0000 방식', 
    `impairment_request`           VARCHAR(2000)    NULL        COMMENT '요청사항', 
    `impairment_price`             DOUBLE           NOT NULL    COMMENT '가격'
);

ALTER TABLE impairment_reservation COMMENT '장애인 택시 예약을 진행후 이용하기 위해 보여주는 예약내역';


-- impairment_member Table Create SQL
CREATE TABLE travel_reservation
(
    `travel_name`              VARCHAR(25)      NOT NULL    COMMENT '이름', 
    `travel_reservation_time`  DATETIME         NOT NULL    COMMENT '예약시간', 
    `travel_course`            VARCHAR(10)      NOT NULL    COMMENT '코스', 
    `travel_driver_name`       VARCHAR(25)      NOT NULL    COMMENT '관광 택시 기사 이름', 
    `travel_phone_number`      VARCHAR(13)      NOT NULL    COMMENT '000-0000-0000 방식', 
    `travel_request`           VARCHAR(2000)    NULL        COMMENT '요청사항', 
    `travel_price`             DOUBLE           NOT NULL    COMMENT '가격'
);

ALTER TABLE travel_reservation COMMENT '관광 택시 예약을 진행후 이용하기 위해 보여주는 예약내역';


-- impairment_member Table Create SQL
CREATE TABLE travel_Course
(
    `course`  VARCHAR(10)    NOT NULL    COMMENT '코스', 
    `price`   DOUBLE         NOT NULL    COMMENT '가격'
);

ALTER TABLE travel_Course COMMENT 'A코스, B코스, C코스 이후 많은 코스를 넣기 위한 테이블';


-- impairment_member Table Create SQL
CREATE TABLE impairment_driver
(
    `impariment_driver_name`         VARCHAR(25)    NOT NULL    COMMENT '장애인 택시 기사 이름', 
    `impairment_license`             VARCHAR(25)    NOT NULL    COMMENT '면허 종류', 
    `impairment_reservation_status`  VARCHAR(15)    NOT NULL    COMMENT '예약 현황', 
    `impairment_grade`               INT            NOT NULL    COMMENT '평점'
);

ALTER TABLE impairment_driver COMMENT '장애인 택시 운행하는 기사분들에 대한 모음입니다.';


-- impairment_member Table Create SQL
CREATE TABLE travel_driver
(
    `travel_driver_name`         VARCHAR(25)    NOT NULL    COMMENT '관광 택시 기사 이름', 
    `travel_reservation_status`  VARCHAR(15)    NOT NULL    COMMENT '예약 현황', 
    `travel_grade`               INT            NULL        COMMENT '평점'
);

ALTER TABLE travel_driver COMMENT '관광 택시 운행하는 기사분들에 대한 모음입니다.';


-- impairment_member Table Create SQL
CREATE TABLE Review
(
    `Review_Title`             VARCHAR(150)     NOT NULL    COMMENT '이용후기 제목', 
    `impairment_ID`            VARCHAR(25)      NOT NULL    COMMENT '장애인 회원 아이디', 
    `impairment_driver_name`   VARCHAR(45)      NOT NULL    COMMENT '장애인 택시 기사 이름', 
    `imparement_driver_grade`  INT              NOT NULL    COMMENT '장애인 택시 기사 평점평가', 
    `Review_type`              INT              NOT NULL    COMMENT 'HTML Radio BOX 의 값을 가져옴', 
    `Review_content`           VARCHAR(2000)    NOT NULL    COMMENT '이용후기 내용', 
    `travel_driver_grade`      INT              NOT NULL    COMMENT '관광 택시 기사 평점평가', 
    `travel_ID`                VARCHAR(25)      NOT NULL    COMMENT '관광 회원 아이디', 
    `travel_driver_name`       VARCHAR(25)      NOT NULL    COMMENT '관광 택시 기사 이름'
);

ALTER TABLE Review COMMENT '택시를 이용후 후기를 남기는 곳';


-- impairment_member Table Create SQL
CREATE TABLE Notice
(
    `Admin_ID`        VARCHAR(25)      NOT NULL    COMMENT '관리자 아이디', 
    `Notice_title`    VARCHAR(150)     NOT NULL    COMMENT '공지사항 제목', 
    `Notice_Content`  VARCHAR(2000)    NOT NULL    COMMENT '공지사항 내용'
);

ALTER TABLE Notice COMMENT '공지사항';


-- impairment_member Table Create SQL
CREATE TABLE Admin
(
    `Admin_ID`        VARCHAR(25)    NOT NULL    COMMENT '관리자 아이디', 
    `Admin_Password`  VARCHAR(25)    NOT NULL    COMMENT '관리자 비밀번호'
);

ALTER TABLE Admin COMMENT '관리자 계정만 따로 관리하기 위해 만들었습니다.';


-- impairment_member Table Create SQL
CREATE TABLE Total_board
(
    `impairment_ID`   VARCHAR(25)      NOT NULL    COMMENT '장애인 회원 아이디', 
    `travel_ID`       VARCHAR(25)      NOT NULL    COMMENT '관광 회원 아이디', 
    `Total_title`     VARCHAR(150)     NOT NULL    COMMENT '통합게시판 제목', 
    `Total_content`   VARCHAR(2000)    NOT NULL    COMMENT '통합게시판 내용', 
    `Total_category`  int              NOT NULL    COMMENT 'Q&A, 건의사항 두가지중 고를수 있게함 (사용 안할수도 있음)'
);

ALTER TABLE Total_board COMMENT '통합게시판';





