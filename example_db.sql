-- This script creates a 'users' table and inserts some dummy data into it.

CREATE DATABASE IF NOT EXISTS devops;
USE devops;

-- Drop the table if it already exists
DROP TABLE IF EXISTS users;

-- Create the 'users' table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert dummy data into the 'users' table
INSERT INTO users (name, email, age) VALUES
('John Doe', 'john.doe@example.com', 28),
('Jane Smith', 'jane.smith@example.com', 32),
('Alice Johnson', 'alice.johnson@example.com', 24),
('Mike Brown', 'mike.brown@example.com', 35);
