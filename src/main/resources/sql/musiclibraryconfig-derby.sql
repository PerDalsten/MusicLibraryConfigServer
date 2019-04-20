CREATE SCHEMA musiclibraryconfig;
SET SCHEMA=musiclibraryconfig;

CREATE TABLE configuration
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	application VARCHAR(100) NOT NULL,
    profile VARCHAR(100) DEFAULT 'default' NOT NULL,
    label VARCHAR(100) DEFAULT 'master' NOT NULL,
    config_key VARCHAR(200) NOT NULL,
    config_value VARCHAR(200) NOT NULL,
    CONSTRAINT configuration_pk PRIMARY KEY (id),
    CONSTRAINT configuration_uniq UNIQUE (application, profile, label, config_key)
);