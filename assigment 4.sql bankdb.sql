CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Balance DECIMAL(10,2)
);

INSERT INTO Accounts (CustomerName, Balance) VALUES
('Ali', 40000),
('Ahmed', 60000),
('Sara', 80000),
('Usman', 30000),
('Zara', 90000);

SELECT CustomerName
FROM Accounts
WHERE Balance > (
    SELECT AVG(Balance)
    FROM Accounts
);