-- Table : Employee

create table emp
(
	emp_id varchar(5) primary key,
	ename varchar(45),
	experience int,
	address varchar(50)
);



-- Table : Department

create table dept
(
	dept_no varchar(5) primary key,
	dname varchar(50),
	emp_id varchar(5),
	foreign key (emp_id) references emp(emp_id)
);