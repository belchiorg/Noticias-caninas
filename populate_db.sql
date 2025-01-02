-- Create database
create database ticketdb with owner postgres;

-- Connect to the database
\c ticketdb;

-- Drop previous tables
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS validators;
DROP TABLE IF EXISTS purchases;
-- Create tables
CREATE TABLE tickets (
                         id SERIAL PRIMARY KEY,
                         event_id INTEGER NOT NULL,
                         event_name VARCHAR(255) NOT NULL,
                         buyer_id VARCHAR(512),
                         buyer_username VARCHAR(512),
                         seller_id VARCHAR(512),
                         seller_username VARCHAR(512),
                         price VARCHAR(512) NOT NULL,
                         seat VARCHAR(255) NOT NULL,
			 buyer_id_IV VARCHAR(512),
			 buyer_id_hash VARCHAR(512),
			 buyer_username_IV VARCHAR(512),
			 seller_id_IV VARCHAR(512),
			 seller_username_IV VARCHAR(512),
			 price_IV VARCHAR(512),
			 purchase_date TIMESTAMPTZ
);

CREATE TABLE Users (
                        id SERIAL PRIMARY KEY,
                        username VARCHAR(255) NOT NULL,
                        certificate BYTEA NOT NULL
);

CREATE TABLE purchases (
    id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL,
    user_id_hash VARCHAR(255) NOT NULL
);

CREATE TABLE validators (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	certificate BYTEA NOT NULL
);

-- Create tickets without buyer and seller to be sold
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A1');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A2');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A3');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A4');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A5');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A6');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A7');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A8');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A9');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A10');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A11');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A12');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A13');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A14');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (1, 'Concert', '100.00', 'A15');

INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B1');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B2');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B3');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B4');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B5');
INSERT INTO tickets (event_id, event_name, price, seat) VALUES (2, 'Theater', '50.00', 'B6');

-- TODO: Manually insert a validator in database.sh?
