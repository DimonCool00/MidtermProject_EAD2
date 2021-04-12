CREATE TABLE Rooms(
            id BIGINT generated ALWAYS AS IDENTITY,
            roomname varchar,
            description varchar,
            price varchar,
            phone varchar,
            roomtype varchar,
            PRIMARY KEY (id)
)
