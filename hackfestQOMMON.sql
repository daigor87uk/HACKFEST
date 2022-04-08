drop schema qommon;
CREATE SCHEMA IF NOT EXISTS qommon;
USE qommon;

CREATE TABLE IF NOT EXISTS Item (
	Item_name VARCHAR(40) NOT NULL,
	Item_id INT NOT NULL AUTO_INCREMENT,
    Address VARCHAR(64) DEFAULT NULL,
    PRIMARY KEY (Item_id)
);

CREATE TABLE IF NOT EXISTS Truck (
    Truck_id INT NOT NULL AUTO_INCREMENT,
    truck_inv VARCHAR(40) DEFAULT NULL,
    Item_id INT NOT NULL NULL,
    PRIMARY KEY (Truck_id),
    FOREIGN KEY (Item_id) REFERENCES Item (Item_id)
);

CREATE TABLE IF NOT EXISTS Driver (
	Driver_name VARCHAR(64) NOT NULL,
    Driver_id INT NOT NULL AUTO_INCREMENT,
    hours INT DEFAULT NULL,
    pass INT DEFAULT NULL,
    Truck_id INT NOT NULL,
    PRIMARY KEY (Driver_id),
    CONSTRAINT fk_truck_id FOREIGN KEY (Truck_ID) REFERENCES Truck (Truck_id)
);

CREATE TABLE IF NOT EXISTS Depot (
	Truck_id INT DEFAULT NULL,
	Depot_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Depot_id),
    FOREIGN KEY (Truck_id) REFERENCES Truck (Truck_id)
);

CREATE TABLE IF NOT EXISTS Truck_items (
    Item_id INT NOT NULL,
    Inventory_id INT NOT NULL AUTO_INCREMENT,
    Driver_id INT NOT NULL,
	FOREIGN KEY (Item_id) REFERENCES Item( Item_id),
    PRIMARY KEY (Inventory_id),
	FOREIGN KEY (Driver_id) REFERENCES Driver (Driver_id)
);

INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 1HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 2HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 3BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 4GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 5DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 6HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 7HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 8HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 9BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 0GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 1DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 2HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 7DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 8HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 9HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 0HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 1BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 2GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 3DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 5HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 6HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 7BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 8GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 9DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 0HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 1HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 2HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 3BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 4GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 5DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 6HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 7HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 8HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 9BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 0GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 1AQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4AL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4BR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3GR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5JR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2YQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4JL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4JR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3KR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5LR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2YQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4QL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4SR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3DR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5GR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6HH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2KQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4LL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4PR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3OR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5IR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6UH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2YQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4TL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4RR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3ER');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5WR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6QH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2QQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4AL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4ZR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3QR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5ER');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2GQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4JR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3KR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5LR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6;H');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2AQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4ZL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4XR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3CR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5VR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6BH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2NQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4ML');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4NR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3BR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5VR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6CH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2XQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4ZL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4QR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3WR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5ER');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DY');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HU');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HI');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HO');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BP');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GK');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DJ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HH');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HG');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HF');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BD');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GS');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DX');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HC');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HV');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HB');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BN');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GM');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DM');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HQ');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HW');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HE');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GT');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DY');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HU');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HI');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HO');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BP');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GA');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DS');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HD');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HF');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HG');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BH');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GJ');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DK');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HZ');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HX');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BC');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GV');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DB');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HN');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HM');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HT');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BT');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DP');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HO');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HT');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BE');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GW');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HA');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HS');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HD');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BF');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GG');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DH');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HJ');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4HK');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HL');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5BD');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'N17 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'N14 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'S10 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5RR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2RQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4RL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4RR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3RR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5RR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2RQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4RL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4RR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3RR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5RR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2RQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4RL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4RR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3RR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5RR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6RH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2EQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4EL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4ER');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3ER');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5ER');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6EH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2EQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4EL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4ER');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3ER');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW3 5ER');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6EH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2EQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4EL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N10 4ER');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3ER');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW1 5ER');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE1 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E11 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE1 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N11 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW1 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE1 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E11 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE1 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N11 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW1 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW2 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE2 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E12 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE2 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N12 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW2 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW2 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE2 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E1 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'S39 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N30 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'S31 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'S33 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'S37 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E34 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'S39 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N30 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'S31 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'S33 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'S37 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E34 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'S39 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N30 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'S31 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'S33 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E14 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE4 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N15 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW5 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW5 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE5 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E15 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE5 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N15 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW5 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW5 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE5 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E15 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE5 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N15 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW5 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW5 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE5 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E16 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE6 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N16 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW6 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW6 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE6 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E16 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE6 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N16 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW6 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW6 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE6 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E17 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE7 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N17 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW7 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW7 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E17 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE7 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N17 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW7 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW7 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE7 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E18 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE8 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N18 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW8 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW8 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE8 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E18 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE8 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N18 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW8 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW8 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE8 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E18 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE8 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N19 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW9 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW9 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE9 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E19 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N19 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW9 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW9 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE9 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E19 2DQ');
INSERT INTO Item (Item_name, Address) VALUES ('keyboard',   'SE9 4HL');
INSERT INTO Item (Item_name, Address) VALUES ('mouse',      'N19 4HR');
INSERT INTO Item (Item_name, Address) VALUES ('screen',     'SW9 3HR');
INSERT INTO Item (Item_name, Address) VALUES ('television', 'SW9 5BR');
INSERT INTO Item (Item_name, Address) VALUES ('watch',      'SE9 6GH');
INSERT INTO Item (Item_name, Address) VALUES ('phone',      'E19 2DQ');

SELECT * FROM Item ORDER BY Address;