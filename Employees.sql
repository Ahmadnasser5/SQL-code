CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Salary NUMBER(10, 2) NOT NULL
);


CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    NationalID VARCHAR2(50) UNIQUE NOT NULL
);


CREATE TABLE Rooms (
    RoomID NUMBER PRIMARY KEY,
    Status VARCHAR2(20) CHECK (Status IN ('Available', 'Occupied')) NOT NULL
);


CREATE TABLE Reservations (
    ReservationID NUMBER PRIMARY KEY,
    RoomID NUMBER NOT NULL,
    CustomerID NUMBER NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);