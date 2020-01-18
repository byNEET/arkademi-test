CREATE TABLE `arkademi`.`product` ( `id` INT NOT NULL , `name` VARCHAR(100) NOT NULL , `price` INT NOT NULL , `id_category` INT NOT NULL , `id_cashier` INT NOT NULL ) ENGINE = InnoDB; 

CREATE TABLE `arkademi`.`category` ( `id` INT NOT NULL , `name` VARCHAR(100) NOT NULL ) ENGINE = InnoDB; 

CREATE TABLE `arkademi`.`cashier` ( `id` INT NOT NULL , `name` VARCHAR(100) NOT NULL ) ENGINE = InnoDB; 