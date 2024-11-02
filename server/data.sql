CREATE DATABASE Moveit;

\c Moveit;

CREATE TABLE users(
    email VARCHAR(255) PRIMARY KEY,
    hashed_password VARCHAR(255)
);

CREATE TABLE todos(
    id SERIAL PRIMARY KEY,
    user_email VARCHAR(255) REFERENCES users(email) ON DELETE CASCADE,  
    title VARCHAR(30) NOT NULL,
    progress INT DEFAULT 0,
    created_date DATE NOT NULL DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL DEFAULT 'pending'
);


-- in sql shell type:
-- Server [localhost]: localhost
-- Database [postgres]: Moveit
-- Port [5432]: 5432
-- Username [postgres]: postgres
-- Password for user postgres: rootroot
-- psql (17.0)
-- WARNING: Console code page (437) differs from Windows code page (1252)
--          8-bit characters might not work correctly. See psql reference
--          page "Notes for Windows users" for details.
-- Type "help" for help.


INSERT INTO users (email, hashed_password) VALUES
('alice@example.com', '$2b$10$H6QnThY0d8Q6Y.aPcmXbIu1EPl/3Lku4rGPAjRM1CtV3mFv5HkTTe');   -- hashed 'password123'

ALTER TABLE todos ALTER COLUMN status TYPE VARCHAR(20);

INSERT INTO todos (user_email, title, progress, created_date, due_date, status) VALUES
('alice@example.com', 'Complete project report', 50, '2023-11-01', '2023-11-10', 'in progress'),
('alice@example.com', 'Buy groceries', 0, '2023-11-01', '2023-11-02', 'pending');