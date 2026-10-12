CREATE TABLE users (
                       id CHAR(36) NOT NULL PRIMARY KEY,
                       username VARCHAR(100) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL,
                       role VARCHAR(50) NOT NULL DEFAULT 'USER',

                       CONSTRAINT uk_users_email UNIQUE (email)
);