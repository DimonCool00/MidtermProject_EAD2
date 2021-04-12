CREATE TABLE Customers(
    id BIGINT generated ALWAYS AS IDENTITY,
    name varchar,
    password varchar,
    email varchar,
    reppassword varchar,
    phone varchar,
    PRIMARY KEY (id)
);
