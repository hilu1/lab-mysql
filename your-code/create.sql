use lab_mysql;
show tables;

CREATE TABLE Cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(50)
);

-- Customers table

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);


CREATE TABLE manufacturer (
   manufacturer_id INT,
     manufacturer_name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);
-- Salespersons table
CREATE TABLE Salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- Invoices table

CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);

    