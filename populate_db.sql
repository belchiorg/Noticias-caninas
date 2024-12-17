create database ticketdb with owner postgres;

\c ticketdb;

CREATE TABLE tickets (
    id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL,
    event_name VARCHAR(255) NOT NULL,
    buyer_id INTEGER,
    buyer_username VARCHAR(255),
    seller_id INTEGER NOT NULL,
    seller_username VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    seat VARCHAR(255) NOT NULL,
    validation_code VARCHAR(255)
);
