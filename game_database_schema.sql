CREATE database Game_Database 
USE Game_Database
CREATE TABLE Customers (
    CustomerID int,
    RegistrationDate DATE,
    Gender CHAR(1),
    Age INT
);
INSERT INTO customers (CustomerID, RegistrationDate, Gender, Age) 
VALUES 
(19800869, '2021-07-07', 'M', 27),
(32432693, '2021-10-23', 'F', 38),
(35024712, '2021-10-15', 'M', 51),
(39440125, '2021-11-24', 'M', 48),
(52009468, '2021-12-30', 'M', 37),
(53480717, '2021-06-17', 'F', 62),
(55939365, '2022-01-03', 'F', 40),
(58756038, '2021-09-17', 'M', 44),
(65279396, '2022-01-03', 'M', 32),
(68361113, '2021-08-12', 'M', 56),
(77117007, '2021-12-28', 'F', 55),
(85390775, '2021-07-27', 'M', 33),
(87766769, '2021-11-28', 'M', 60),
(96364300, '2021-09-05', 'M', 43),
(96786690, '2022-01-01', 'M', 29);

SELECT * FROM Customers


CREATE TABLE Transactions (
    CustomerID INT,
    TransactionDate DATE,
    GameCategory VARCHAR(50),
    Revenue DECIMAL(10, 2)
);
SELECT * FROM Transactions
-- Step 2: Insert data into the Transactions table
INSERT INTO Transactions (CustomerID, TransactionDate, GameCategory, Revenue)
VALUES 
(19800869, '2022-01-01', 'Poker', 40),
(32432693, '2022-01-01', 'Sportsbook', 2),
(58756038, '2022-01-01', 'Casino', 12),
(68361113, '2022-01-01', 'Casino', 20),
(87766769, '2022-01-02', 'Sportsbook', 11),
(19800869, '2022-01-03', 'Poker', 11),
(55939365, '2022-01-03', 'Sportsbook', 20),
(96786690, '2022-01-04', 'Sportsbook', 12),
(52009468, '2022-01-05', 'Sportsbook', 2),
(52009468, '2022-01-06', 'Casino', 17),
(52009468, '2022-01-07', 'Casino', 2),
(32432693, '2022-01-08', 'Casino', 5),
(77117007, '2022-01-09', 'Poker', 5),
(77117007, '2022-01-10', 'Poker', 6),
(77117007, '2022-01-10', 'Sportsbook', 7);