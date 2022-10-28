CREATE TABLE BUILDING (
  BUILDING_ID NUMBER(10) NOT NULL,
  BUILDING_NAME CHAR(255) NOT NULL,
  STREET CHAR(255),
  STREET_NUMBER CHAR(255),
  ZIP_CODE NUMBER(5),
  CITY CHAR(255),
  COUNTRY CHAR(255),
  FLOORS_NUMBER NUMBER(3) NOT NULL,
  PRIMARY KEY (BUILDING_ID)
);

CREATE TABLE COMPUTER (
  COMPUTER_ID NUMBER(10) NOT NULL,
  ROOM_ID NUMBER(10) NOT NULL,
  COMPUTER_NAME CHAR(255) NOT NULL UNIQUE,
  SERIAL_NUMBER CHAR(255) NOT NULL UNIQUE,
  MANUFACTURER CHAR(255),
  TYPE SET('PC', 'Laptop') NOT NULL,
  CPU_ID NUMBER(10) NOT NULL,
  GPU_ID NUMBER(10) NOT NULL,
  RAM NUMBER(10),
  WARRANTY_DATE DATE,
  CONNECTORS CHAR(255),
  DESCRIPTION CHAR(255),
  PRIMARY KEY (COMPUTER_ID)
);

CREATE TABLE CPU (
  CPU_ID NUMBER(10) NOT NULL,
  CPU_NAME CHAR(255) NOT NULL,
  NUMBER_OF_THREADS NUMBER(10) NOT NULL,
  FREQUENCY NUMBER(10) NOT NULL,
  COMPUTERGPU NUMBER(10) NOT NULL,
  PRIMARY KEY (CPU_ID)
);

CREATE TABLE GPU (
  GPU_ID NUMBER(10) NOT NULL,
  GPU_NAME CHAR(255) NOT NULL,
  MEMORY NUMBER(10),
  PRIMARY KEY (GPU_ID)
);

CREATE TABLE HDD (
  COMPUTER_ID NUMBER(10) NOT NULL,
  HDD_ID NUMBER(10) NOT NULL,
  HDD_NAME CHAR(255) NOT NULL,
  MEMORY NUMBER(10) NOT NULL
);

CREATE TABLE MONITOR (
  MONITOR_ID NUMBER(10) NOT NULL,
  ROOM_ID NUMBER(10) NOT NULL,
  COMPUTER_ID NUMBER(10) NOT NULL,
  MANUFACTURER CHAR(255),
  SERIAL_NUMBER CHAR(255) NOT NULL UNIQUE,
  DIAGONAL NUMBER(4, 2),
  RESOLUTION SET('HD', 'FHD', 'QHD', 'UHD') NOT NULL,
  REFRESH_RATE NUMBER(3),
  WARRANTY_DATE DATE,
  COMPUTERCPU_ID NUMBER(10) NOT NULL,
  COMPUTERGPU NUMBER(10) NOT NULL,
  PRIMARY KEY (MONITOR_ID)
);

CREATE TABLE PRINTER (
  PRINTER_ID NUMBER(10) NOT NULL,
  ROOM_ID NUMBER(10) NOT NULL,
  PRINTER_NAME CHAR(255) NOT NULL,
  MANUFACTURER CHAR(255),
  SERIAL_NUMBER CHAR(255) NOT NULL UNIQUE,
  COLOR_PRINTING NUMBER(1),
  SCANNER NUMBER(1),
  WARRANTY_DATE DATE,
  PRIMARY KEY (PRINTER_ID)
);

CREATE TABLE RAM (
  COMPUTER_ID NUMBER(10) NOT NULL,
  RAM_ID NUMBER(10) NOT NULL,
  RAM_NAME CHAR(255) NOT NULL,
  SPEED NUMBER(10) NOT NULL
);

CREATE TABLE ROOM (
  ROOM_ID NUMBER(10) NOT NULL,
  BUILDING_ID NUMBER(10) NOT NULL,
  ROOM_NAME CHAR(255) NOT NULL,
  FLOOR NUMBER(3) NOT NULL,
  ROOM_NUMBER CHAR(255) NOT NULL,
  PRIMARY KEY (ROOM_ID)
);

CREATE TABLE SOFTWARE (
  SOFTWARE_ID NUMBER(10) NOT NULL,
  COMPUTER_ID NUMBER(10) NOT NULL,
  SOFTWARE_NAME CHAR(255) NOT NULL,
  MANUFACTURER CHAR(255),
  LICENSE_KEY CHAR(255) NOT NULL UNIQUE,
  EXPIRE_DATE DATE,
  COMPUTERCPU_ID NUMBER(10) NOT NULL,
  COMPUTERGPU NUMBER(10) NOT NULL,
  PRIMARY KEY (SOFTWARE_ID)
);

CREATE TABLE SSD (
  COMPUTER_ID NUMBER(10) NOT NULL,
  SSD_ID NUMBER(10) NOT NULL,
  SSD_NAME CHAR(255) NOT NULL,
  MEMORY NUMBER(10) NOT NULL
);

CREATE TABLE "user" (
  USER_ID NUMBER(10) NOT NULL,
  LOGIN CHAR(255) NOT NULL UNIQUE,
  PASSWORD CHAR(255) NOT NULL,
  EMAIL CHAR(255) NOT NULL,
  FIRST_NAME CHAR(255),
  SURNAME CHAR(255),
  LAST_LOGIN DATE,
  PRIMARY KEY (USER_ID)
);

CREATE TABLE USER_BUILDING (
  USER_ID NUMBER(10) NOT NULL,
  BUILDING_ID NUMBER(10) NOT NULL,
  PRIMARY KEY (USER_ID, BUILDING_ID)
);

CREATE UNIQUE INDEX BUILDING_BUILDING_ID ON BUILDING (
  BUILDING_ID
);

CREATE UNIQUE INDEX COMPUTER_COMPUTER_ID ON COMPUTER (
  COMPUTER_ID
);

CREATE INDEX COMPUTER_CPU_ID ON COMPUTER (
  CPU_ID
);

CREATE INDEX COMPUTER_GPU_ID ON COMPUTER (
  GPU_ID
);

CREATE UNIQUE INDEX CPU_CPU_ID ON CPU (
  CPU_ID
);

CREATE UNIQUE INDEX GPU_GPU_ID ON GPU (
  GPU_ID
);

CREATE UNIQUE INDEX HDD_HDD_ID ON HDD (
  HDD_ID
);

CREATE UNIQUE INDEX PRINTER_PRINTER_ID ON PRINTER (
  PRINTER_ID
);

CREATE UNIQUE INDEX RAM_RAM_ID ON RAM (
  RAM_ID
);

CREATE INDEX ROOM_ROOM_ID ON ROOM (
  ROOM_ID
);

CREATE UNIQUE INDEX SOFTWARE_SOFTWARE_ID ON SOFTWARE (
  SOFTWARE_ID
);

CREATE UNIQUE INDEX SSD_SSD_ID ON SSD (
  SSD_ID
);

CREATE UNIQUE INDEX USER_USER_ID ON "user" (
  USER_ID
);

ALTER TABLE USER_BUILDING ADD CONSTRAINT FKUSER_BUILD762997 FOREIGN KEY (USER_ID) REFERENCES "user" (USER_ID);

ALTER TABLE USER_BUILDING ADD CONSTRAINT FKUSER_BUILD82782 FOREIGN KEY (BUILDING_ID) REFERENCES BUILDING (BUILDING_ID);

ALTER TABLE ROOM ADD CONSTRAINT FKROOM519804 FOREIGN KEY (BUILDING_ID) REFERENCES BUILDING (BUILDING_ID);

ALTER TABLE PRINTER ADD CONSTRAINT FKPRINTER394947 FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID);

ALTER TABLE MONITOR ADD CONSTRAINT FKMONITOR355636 FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID);

ALTER TABLE COMPUTER ADD CONSTRAINT FKCOMPUTER840158 FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID);

ALTER TABLE SOFTWARE ADD CONSTRAINT FKSOFTWARE161472 FOREIGN KEY (COMPUTER_ID) REFERENCES COMPUTER (COMPUTER_ID);

ALTER TABLE MONITOR ADD CONSTRAINT FKMONITOR150752 FOREIGN KEY (COMPUTER_ID) REFERENCES COMPUTER (COMPUTER_ID);

ALTER TABLE COMPUTER ADD CONSTRAINT FKCOMPUTER570307 FOREIGN KEY (CPU_ID) REFERENCES CPU (CPU_ID);

ALTER TABLE COMPUTER ADD CONSTRAINT FKCOMPUTER607588 FOREIGN KEY (GPU_ID) REFERENCES GPU (GPU_ID);

ALTER TABLE HDD ADD CONSTRAINT FKHDD66918 FOREIGN KEY (COMPUTER_ID) REFERENCES COMPUTER (COMPUTER_ID);

ALTER TABLE SSD ADD CONSTRAINT FKSSD55882 FOREIGN KEY (COMPUTER_ID) REFERENCES COMPUTER (COMPUTER_ID);

ALTER TABLE RAM ADD CONSTRAINT FKRAM57392 FOREIGN KEY (COMPUTER_ID) REFERENCES COMPUTER (COMPUTER_ID);