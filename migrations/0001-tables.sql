CREATE TABLE drives_licence (
    drivLice_id integer PRIMARY KEY AUTOINCREMENT,
    driving_lice_number text,
    date_of_issue DATE,
    driving_lice_code text,
    drivng_lice_renew_date DATE
);

CREATE TABLE motorist (
    motorist_id integer PRIMARY KEY AUTOINCREMENT,
    firnames text,
    surname text,
    id_number text,
    gender text
);

