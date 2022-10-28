INSERT INTO BUILDING (
    BUILDING_ID,
    BUILDING_NAME,
    STREET,
    STREET_NUMBER,
    ZIP_CODE,
    CITY,
    COUNTRY,
    FLOORS_NUMBER
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO COMPUTER (
    COMPUTER_ID,
    ROOM_ID,
    COMPUTER_NAME,
    SERIAL_NUMBER,
    MANUFACTURER,
    TYPE,
    CPU_ID,
    GPU_ID,
    RAM,
    WARRANTY_DATE,
    CONNECTORS,
    DESCRIPTION
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO CPU (
    CPU_ID,
    CPU_NAME,
    NUMBER_OF_THREADS,
    FREQUENCY,
    COMPUTERGPU
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO GPU (
    GPU_ID,
    GPU_NAME,
    MEMORY
) VALUES (
    ?,
    ?,
    ?
);

INSERT INTO HDD (
    COMPUTER_ID,
    HDD_ID,
    HDD_NAME,
    MEMORY
) VALUES (
    ?,
    ?,
    ?,
    ?
);

INSERT INTO MONITOR (
    MONITOR_ID,
    ROOM_ID,
    COMPUTER_ID,
    MANUFACTURER,
    SERIAL_NUMBER,
    DIAGONAL,
    RESOLUTION,
    REFRESH_RATE,
    WARRANTY_DATE,
    COMPUTERCPU_ID,
    COMPUTERGPU
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO PRINTER (
    PRINTER_ID,
    ROOM_ID,
    PRINTER_NAME,
    MANUFACTURER,
    SERIAL_NUMBER,
    COLOR_PRINTING,
    SCANNER,
    WARRANTY_DATE
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO RAM (
    COMPUTER_ID,
    RAM_ID,
    RAM_NAME,
    SPEED
) VALUES (
    ?,
    ?,
    ?,
    ?
);

INSERT INTO ROOM (
    ROOM_ID,
    BUILDING_ID,
    ROOM_NAME,
    FLOOR,
    ROOM_NUMBER
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO SOFTWARE (
    SOFTWARE_ID,
    COMPUTER_ID,
    SOFTWARE_NAME,
    MANUFACTURER,
    LICENSE_KEY,
    EXPIRE_DATE,
    COMPUTERCPU_ID,
    COMPUTERGPU
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO SSD (
    COMPUTER_ID,
    SSD_ID,
    SSD_NAME,
    MEMORY
) VALUES (
    ?,
    ?,
    ?,
    ?
);

INSERT INTO "user" (
    USER_ID,
    LOGIN,
    PASSWORD,
    EMAIL,
    FIRST_NAME,
    SURNAME,
    LAST_LOGIN
) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
);

INSERT INTO USER_BUILDING (
    USER_ID,
    BUILDING_ID
) VALUES (
    ?,
    ?
);