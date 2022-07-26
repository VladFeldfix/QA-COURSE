-- Create a database
CREATE DATABASE KOLBO;

-- Create the tables
CREATE TABLE products(
    p_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    p_name VARCHAR(40),
    p_price FLOAT
)

CREATE TABLE workers(
    w_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    w_fname VARCHAR(25),
    w_lname VARCHAR(25),
    w_sex CHAR
)

CREATE TABLE orders(
    o_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    p_id INT NOT NULL,
    w_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (p_id) REFERENCES products(p_id),
    FOREIGN KEY (w_id) REFERENCES workers(w_id)
)