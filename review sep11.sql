use shabana;
create table employee2(employee_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date date,
department varchar(50)
);

CREATE TABLE reward (
 Employee_ref_id int,
 date_reward Date,
    amount int,
 FOREIGN KEY (Employee_ref_id) REFERENCES Employee2(Employee_id)
 );
 
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (1, 'Bob', 'Kinto', 1000000, "2019-01-20", "Finance");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (2, 'Jerry', 'Kansxo', 6000000, "2019-01-15", "IT");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (3, 'Philip', 'Jose', 8900000, "2019-02-05", "Banking");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (4, 'John', 'Abraham', 2000000, "2019-02-25", "Insurance");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (5, 'Michael', 'Mathew', 2200000, "2019-02-28", "Finance");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (6, 'Alex', 'chreketo', 4000000, "2019-05-10", "IT");
 INSERT INTO Employee2 (Employee_id, First_name, Last_name, Salary, Joining_date,
 Department) VALUES (7, 'Yohan', 'Soso', 1230000, "2019-06-20", "Banking");
 /* table reward */
 INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (1, '2019-05-11',
 '1000');
 INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (2, '2019-02-15',
 '5000');
 INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (3, '2019-04-22',
 '2000');
 INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (1, '2019-06-20',
 '8000'); 
 
 
 
 
 #Q1
 select first_name, length(first_name) from employee2;
 
 #Q2
 select replace(first_name,'o','#') from employee2;
 
 #Q3
 select concat(last_name,'_',first_name) from employee2;
 
 #Q4
 select year(joining_date),month(joining_date),day(joining_date)from employee2;
 
 #Q5
 select * from employee2 order by first_name asc;
 
 #Q6
 select * from employee2 order by first_name desc;
 
 #Q7
 select * from employee2 order by first_name asc,salary desc;
 
 #Q8
 select * from employee2 where first_name='Bob';
 
 #Q9
 select * from employee2 where first_name in ('Bob','Alex');
 
 #Q10
 select * from employee2 where first_name not in ('Bob','Alex');
 
 #Q11
 select * from employee2 where first_name like 'B%';
 
 #Q12
 select * from employee2 where first_name like '%o%';
 
 #Q13
 select * from employee2 where first_name like '%n';
 
 #Q14
 select * from employee2 where first_name like '___n';
 
 #Q15
 select * from employee2 where first_name like 'J___';
 
 #Q16
 select* from employee2 where salary>3000000;
 
 #Q17
 select * from employee2 where salary between 2000000 and 5000000;
 
 #Q18
 select * from employee2 where first_name in ('Bob','Alex');
 
 #Q20
select * from employee2 where year(joining_date) = 2019;

#Q21
select * from employee2 where month(joining_date) = 1;

#Q22
select * from employee2 where joining_date <'2019-03-01';

#Q23
select * from employee2 where joining_date >'2019-03-31';

#Q24
select now();

#Q25
select now(3);

#Q26
select first_name from employee2 where first_name like'%\%%';



  