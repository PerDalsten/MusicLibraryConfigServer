CREATE TABLE configuration
(
    id INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) NOT NULL PRIMARY KEY,		
	application VARCHAR(100) NOT NULL,
    profile VARCHAR(100) DEFAULT 'default' NOT NULL,
    label VARCHAR(100) DEFAULT 'master' NOT NULL,
    config_key VARCHAR(200) NOT NULL,
    config_value VARCHAR(200) NOT NULL,
    CONSTRAINT configuration_uniq UNIQUE (application, profile, label, config_key)
);

CREATE USER "musiclibraryconfig" password 'musiclibraryconfig';

CREATE ROLE "musiclibraryconfig_role";

GRANT "musiclibraryconfig_role" to "musiclibraryconfig";

GRANT ALL ON TABLE configuration to "musiclibraryconfig_role";