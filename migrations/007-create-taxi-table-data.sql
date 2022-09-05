-- taxi data to be added

INSERT into taxi
    (regNumber, seats)
    VALUES("GP 564", 15),
    ("GP DFGH 7", 14),
    ("GP GFDJ 112", 15);


INSERT INTO drivers
    (first_name, last_name, contact_number)
    VALUES("Siya", "Mahlangu", "078 785 1227"),
        ("Sandawana", "Dhamini", "071 234 7890"), 
        ("Mike", "Langa","086 909 6509");

INSERT INTO routes
    (route, price, km)
    VALUES("JHB_Sandton", 100, 56), 
    ("Alex_JHB", 20, 56),
    ("vosloo", 45, 79);