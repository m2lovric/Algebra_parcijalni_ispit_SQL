CREATE DATABASE DVDStore;

USE DVDStore;
GO

CREATE TABLE Customers (
    id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
);

CREATE TABLE DVD (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100),
    borrow_date DATETIME,
    return_date DATETIME,
    customer_id INT FOREIGN KEY REFERENCES Customers(id)
);

INSERT INTO Customers VALUES 
('John', 'Doe'),
('Ivan', 'Horvat'),
('Jane', 'Doe');

INSERT INTO DVD (name, borrow_date, return_date, customer_id) VALUES 
('Thriller', '2024-02-01', null, 1),
('Back in Black','2024-03-12', '2024-03-17', 2),
('The Dark Side of the Moon', '2024-01-20', null, 3);