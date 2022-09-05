-- taxi tables to be created

CREATE TABLE taxi(
    id integer PRIMARY KEY AUTOINCREMENT,
    regNumber text,
    seats real
);

CREATE TABLE drivers(
    id integer PRIMARY KEY AUTOINCREMENT,
    first_name text,
    last_name text, 
    contact_number text
);

CREATE TABLE routes(
     id integer PRIMARY KEY AUTOINCREMENT,
     route text,
     price real,
     km integer
);

CREATE TABLE route_driver(
    id integer PRIMARY KEY AUTOINCREMENT,
    taxi_ID integer,
    route_ID integer,
    FOREIGN KEY (taxi_ID) REFERENCES taxi(id),
    FOREIGN KEY (route_ID) REFERENCES route(id)
);
