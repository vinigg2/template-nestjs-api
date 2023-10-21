-- # CREATE DATABASE
CREATE DATABASE IF NOT EXISTS boilerplate;

-- # USERS TABLE
CREATE TABLE IF NOT EXISTS boilerplate.users (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    status VARCHAR(1),
    password VARCHAR(100)
);

-- # PROFILE TABLE
CREATE TABLE IF NOT EXISTS boilerplate.profile (
    id VARCHAR(36) PRIMARY KEY,
    usr_id VARCHAR(36),
    birthday DATE,
    gender VARCHAR(20),
    phone VARCHAR(20),
    avatar VARCHAR(225),
    FOREIGN KEY (usr_id) REFERENCES boilerplate.users(id)
);

-- # ADDRESS TABLE
CREATE TABLE IF NOT EXISTS boilerplate.address (
    id VARCHAR(36) PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zipcode INT(8),
    profile_id VARCHAR(36),
    FOREIGN KEY (profile_id) REFERENCES boilerplate.profile(id)
);

-- # DOCUMENTS TABLE
CREATE TABLE IF NOT EXISTS boilerplate.documents (
    id VARCHAR(36) PRIMARY KEY,
    type_document VARCHAR(100),
    number_document VARCHAR(100),
    profile_id VARCHAR(36),
    FOREIGN KEY (profile_id) REFERENCES boilerplate.profile(id)
);
