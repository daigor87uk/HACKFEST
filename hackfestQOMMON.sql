CREATE SCHEMA IF NOT EXISTS qommon;
USE qommon;
CREATE TABLE IF NOT EXISTS Driver (
    `Driver_id` INT(11) NOT NULL AUTO_INCREMENT,
    `hours` INT(11) DEFAULT NULL,
    `pass` INT(11) DEFAULT NULL,
    `Truck_id` INT(11) DEFAULT NULL,
    PRIMARY KEY (`Driver_id`),
    CONSTRAINT fk_truck_id FOREIGN KEY (`Truck_ID`) REFERENCES Truck (Truck_id)
);

CREATE TABLE IF NOT EXISTS Truck (
    `Truck_id` INT(11) NOT NULL AUTO_INCREMENT,
    `truck_inv` VARCHAR(40) DEFAULT NULL,
    `Driver_id` INT(11) DEFAULT NULL,
    `Item_id` INT(11)DEFAULT NULL,
    PRIMARY KEY (`Truck_id`),
    FOREIGN KEY (`Item_id`) REFERENCES Item (Item_id),
    FOREIGN KEY (`Driver_id`) REFERENCES Driver (Driver_id)
);

CREATE TABLE IF NOT EXISTS Depot (
	`Depot_id` INT(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`Depot_id`),
    FOREIGN KEY (`Truck_id`) REFERENCES Truck (Truck_id)
);

CREATE TABLE IF NOT EXISTS Item (
	Item_name VARCHAR(40) DEFAULT NULL,
	Item_id INT(11) NOT NULL AUTO_INCREMENT,
    Address VARCHAR(64) DEFAULT NULL,
    PRIMARY KEY (Item_id)
);

CREATE TABLE IF NOT EXISTS Truck_items (
    Item_id INT(11) NOT NULL,
    Inventory_id INT(11) NOT NULL AUTO_INCREMENT,
	FOREIGN KEY (Item_id) REFERENCES Item(Item_id),
    PRIMARY KEY (Inventory_id)
);