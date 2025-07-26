USE mydb;

-- Insert Departments
INSERT INTO department (name, location) VALUES
('Engineering', 'Bangalore'),
('Sales', 'Mumbai'),
('HR', 'Delhi'),
('Marketing', 'Chennai'),
('Finance', 'Hyderabad');

-- Insert Employees
INSERT INTO employee (first_name, last_name, email, hire_date, department_id) VALUES
('Amit', 'Sharma', 'amit.sharma@example.com', '2021-01-15', 1),
('Sneha', 'Patel', 'sneha.patel@example.com', '2020-06-20', 2),
('Rahul', 'Verma', 'rahul.verma@example.com', '2019-04-10', 1),
('Priya', 'Menon', 'priya.menon@example.com', '2022-02-12', 3),
('Ravi', 'Kumar', 'ravi.kumar@example.com', '2018-11-30', 4),
('Nikita', 'Joshi', 'nikita.joshi@example.com', '2023-03-18', 5),
('Ankit', 'Gupta', 'ankit.gupta@example.com', '2021-07-09', 2),
('Divya', 'Mishra', 'divya.mishra@example.com', '2020-09-25', 1),
('Karan', 'Yadav', 'karan.yadav@example.com', '2022-06-15', 3),
('Meera', 'Singh', 'meera.singh@example.com', '2021-12-01', 4),
('Suresh', 'Naik', 'suresh.naik@example.com', '2017-10-10', 5),
('Anjali', 'Rao', 'anjali.rao@example.com', '2023-01-20', 2),
('Mohit', 'Bajaj', 'mohit.bajaj@example.com', '2019-08-14', 1),
('Pooja', 'Saxena', 'pooja.saxena@example.com', '2020-03-23', 5),
('Deepak', 'Tripathi', 'deepak.tripathi@example.com', '2021-09-27', 2),
('Swati', 'Deshmukh', 'swati.deshmukh@example.com', '2023-05-05', 3),
('Arjun', 'Kapoor', 'arjun.kapoor@example.com', '2018-02-28', 4),
('Neha', 'Dubey', 'neha.dubey@example.com', '2020-07-13', 1),
('Raj', 'Reddy', 'raj.reddy@example.com', '2019-12-19', 3),
('Isha', 'Khan', 'isha.khan@example.com', '2022-08-08', 4);

-- Insert Salaries in INR
INSERT INTO salary (employee_id, amount, start_date, end_date) VALUES
(1, 85000.00, '2021-01-15', NULL),
(2, 75000.00, '2020-06-20', NULL),
(3, 92000.00, '2019-04-10', NULL),
(4, 67000.00, '2022-02-12', NULL),
(5, 70000.00, '2018-11-30', NULL),
(6, 80000.00, '2023-03-18', NULL),
(7, 72000.00, '2021-07-09', NULL),
(8, 88000.00, '2020-09-25', NULL),
(9, 60000.00, '2022-06-15', NULL),
(10, 71000.00, '2021-12-01', NULL),
(11, 95000.00, '2017-10-10', NULL),
(12, 79000.00, '2023-01-20', NULL),
(13, 99000.00, '2019-08-14', NULL),
(14, 67000.00, '2020-03-23', NULL),
(15, 73000.00, '2021-09-27', NULL),
(16, 66000.00, '2023-05-05', NULL),
(17, 91000.00, '2018-02-28', NULL),
(18, 77000.00, '2020-07-13', NULL),
(19, 76000.00, '2019-12-19', NULL),
(20, 83000.00, '2022-08-08', NULL);
