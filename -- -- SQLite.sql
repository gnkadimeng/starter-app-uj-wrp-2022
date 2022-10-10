-- -- SQLite


-- INSERT INTO motorist
--     (firnames, surname, id_number, gender) 
--         VALUES ("Alex", "Moodley", "9401015050890", "Male"),
--         ("Georgina", "Moyo", "9301015050890", "Female")


    


--     CREATE TABLE drives_licence (
--     drivLice_id integer PRIMARY KEY AUTOINCREMENT,
--     driving_lice_number text,
--     date_of_issue DATE,
--     driving_lice_code text
--     drivng_lice_renew_date DATE
-- );


    SELECT * FROM drives_licence;


INSERT INTO drives_licence
    (driving_lice_number, date_of_issue, driving_lice_code, drivng_lice_renew_date)
    VALUES ("2000-80002", "2009-04-17", "Code B", "2011-01-22"),
    ("8000-80022", "2010-04-09", "Code B", "2012-01-22"),
    ("6000-80902", "2011-04-07", "Code B", "2012-01-22")

