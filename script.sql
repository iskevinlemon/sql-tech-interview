-- This script is for interviewer to run on their machine
CREATE DATABASE Customer;
USE Customer;

CREATE TABLE customer (
   customer_id INT AUTO_INCREMENT,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   email VARCHAR(150),
   account_role VARCHAR(50),
   status VARCHAR(50),
   phone_number VARCHAR(100),
   address VARCHAR(250),
   PRIMARY KEY (customer_id) 
);

CREATE TABLE transaction (
   transaction_id INT AUTO_INCREMENT PRIMARY KEY,
   customer_id INT,
   FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
   date DATE,
   amount DECIMAL(6,2) unsigned,
   status VARCHAR(100),
   payment_method VARCHAR(100),
   merchant VARCHAR(100),
   type VARCHAR(100)
);

INSERT INTO customer (customer_id, first_name, last_name, email, account_role, status, phone_number, address) 
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'Standard', 'Active', '123-456-7890', '123 Main St'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'Standard', 'Active', '234-567-8901', '456 Elm St'),
    (3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Premium', 'Active', '345-678-9012', '789 Oak St'),
    (4, 'Bob', 'Williams', 'bob.williams@example.com', 'Standard', 'Inactive', '456-789-0123', '101 Pine St'),
    (5, 'Emily', 'Brown', 'emily.brown@example.com', 'Premium', 'Active', '567-890-1234', '202 Maple St'),
    (6, 'Michael', 'Jones', 'michael.jones@example.com', 'Standard', 'Active', '678-901-2345', '303 Cedar St'),
    (7, 'Sarah', 'Garcia', 'sarah.garcia@example.com', 'Standard', 'Active', '789-012-3456', '404 Birch St'),
    (8, 'David', 'Martinez', 'david.martinez@example.com', 'Premium', 'Active', '890-123-4567', '505 Walnut St'),
    (9, 'Jennifer', 'Hernandez', 'jennifer.hernandez@example.com', 'Standard', 'Active', '901-234-5678', '606 Cherry St'),
    (10, 'Chris', 'Young', 'chris.young@example.com', 'Standard', 'Active', '012-345-6789', '707 Apple St');

INSERT INTO transaction (customer_id, date, amount, status, payment_method, merchant, type) 
VALUES
    (3, '2024-05-01', 100.50, 'Completed', 'Credit Card', 'Online Store', 'Purchase'),
    (2, '2024-05-02', 75.25, 'Pending', 'PayPal', 'Clothing Store', 'Refund'),
    (3, '2024-05-03', 200.00, 'Completed', 'Debit Card', 'Electronics Store', 'Purchase'),
    (4, '2024-05-04', 50.75, 'Completed', 'Cash', 'Grocery Store', 'Purchase'),
    (5, '2024-05-05', 300.00, 'Pending', 'Credit Card', 'Online Marketplace', 'Refund'),
    (2, '2024-05-06', 150.50, 'Completed', 'Credit Card', 'Bookstore', 'Purchase'),
    (6, '2024-05-07', 80.00, 'Completed', 'Credit Card', 'Coffee Shop', 'Purchase'),
    (5, '2024-05-08', 120.25, 'Pending', 'Debit Card', 'Restaurant', 'Refund'),
    (2, '2024-05-09', 175.00, 'Completed', 'Cash', 'Home Improvement Store', 'Purchase'),
    (7, '2024-05-10', 90.75, 'Completed', 'Credit Card', 'Pet Store', 'Purchase');