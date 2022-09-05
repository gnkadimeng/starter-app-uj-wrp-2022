create table movie(
    id integer primary key AUTOINCREMENT,
    movie_name text
);

create table actor(
    id integer primary key AUTOINCREMENT,
    first_name text,
    last_name text
);

create table movie_actor(
    id integer primary key AUTOINCREMENT,
    movie_id integer,
    actor_id integer,
    FOREIGN KEY (movie_id) REFERENCES movie(id),
    FOREIGN KEY (actor_id) REFERENCES actor(id)
);


---Will Smith - I robot, Men in Black 1-3, Hitch

--- Whoopi Goldberg - Ghost, Sarafina, Sister Act

--- Demi Moore - Ghost, GI Jane, Charlie's Angels: Full Throttle