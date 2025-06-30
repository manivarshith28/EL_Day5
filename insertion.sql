-- Table : Employee

insert into emp
(emp_id, ename, experience, address)
values
('e101', 'arjun', 5, 'mumbai'),
('e102', 'kavya', 3, 'hyderabad'),
('e103', 'nikhil', 2, 'delhi'),
('e104', 'varun', 4, 'chennai'),
('e105', 'rohan', 6, 'pune'),
('e106', 'divya', 1, 'lucknow');



-- Table : Department

insert into dept
(dept_no, dname, emp_id)
values
('d01', 'computer science', 'e101'),
('d02', 'electronics', 'e102'),
('d03', 'mechanical', 'e105'),
('d04', 'civil', null),
('d05', 'information tech', 'e103'),
('d06', 'artificial intelligence', null);