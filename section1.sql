CREATE TABLE customer (
    id int,
    name varchar(255),
    mobile varchar(255),
    email varchar(255),
    dob varchar(255),
    gender varchar(255),
    address varchar(400),
    PRIMARY KEY (ID)
);

CREATE TABLE deal (
    id int,
    date varchar(255),
    emp_id int,
    cust_id int,
    service_id int,
    PRIMARY KEY (ID)
);

CREATE TABLE employee (
    id int,
    name varchar(255),
    department varchar(255),
    mobile varchar(10),
    email varchar(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Package (
    id int,
    service_id int,
    total_discount float,
    total float,
    payment_type varchar(255),
    PRIMARY KEY (ID)
);


CREATE TABLE Service (
    id int,
    start_date varchar(255),
    end_date varchar(255),
    accommodation_id int,
    transportation_id int,
    activity_id int,
    PRIMARY KEY (ID)
);


CREATE TABLE Accommodation (
    id int,
    name varchar(255),
    location varchar(255),
    type varchar(255),
    price float,
    PRIMARY KEY (ID)
);

CREATE TABLE Activity (
    id int,
    location varchar(255),
    type varchar(255),
    price float,
    PRIMARY KEY (ID)
);


CREATE TABLE Transportation (
    id int,
    to_ varchar(255),
    from_ varchar(255),
    type varchar(255),
    price float,
    PRIMARY KEY (ID)
);



LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\Deal_trip.csv' INTO TABLE deal
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\customer_trip.csv' INTO TABLE customer
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;


LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\employee_trip.csv' INTO TABLE employee
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\services_trip.csv' INTO TABLE service
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\Package_trip.csv' INTO TABLE package
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;


LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\Accommodation_trip.csv' INTO TABLE accommodation
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\Activity_trip.csv' INTO TABLE activity
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\bin\\PROJECT_FILES\\usa\\db_design\\transportation_trip.csv' INTO TABLE transportation
FIELDS TERMINATED BY ',' ESCAPED BY "'" IGNORE 1 LINES;