CREATE DATABASE musiclibrarydb;

USE musiclibrarydb;

CREATE TABLE configuration
(
    id INT NOT NULL AUTO_INCREMENT,		
	application VARCHAR(100) NOT NULL,
    profile VARCHAR(100) DEFAULT 'default' NOT NULL,
    label VARCHAR(100) DEFAULT 'master' NOT NULL,
    config_key VARCHAR(200) NOT NULL,
    config_value VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (application, profile, label, config_key)
);

USE mysql;

CREATE USER 'musiclibraryconfig'@'localhost' IDENTIFIED BY 'musiclibraryconfig';

GRANT ALL PRIVILEGES ON musiclibrarydb.* TO 'musiclibraryconfig'@'localhost';
