-- create schema dummy
-- cntrl+enter run -> runs selectes query
-- use dummy
-- Create table teacher(
-- name varchar(50),
-- age int,
-- salary int,
-- department varchar(50)
-- )
-- alter table teacher add column degree varchar(50)
-- alter table teacher change department dept varchar (50)

-- create table student (
-- name varchar(50),
-- department varchar(50),
-- marks_scored int)
-- alter table student add column city varchar(50)
-- alter table student change marks_scored age int
-- select * from student
-- drop table student
-- insert into student values( 'john','cse',23)
-- insert into student values( 'praveen','cse',24)
-- insert into student values( 'suresh','cse',23)
-- update student set age=23
-- update student set department="Computer Science" where department="CSE"
-- update student set age=30 where name="john"
-- create table fruit(
-- name varchar(50),price int)
-- insert into fruit values("apple",100)
-- insert into fruit values("grape",60)
-- insert into fruit values("banana",20)
-- update fruit set price=150 where name="apple"
-- update fruit set name="mango" where name="banana"
-- delete from fruit where name="apple"
-- delete from fruit
-- select * from fruit
-- truncate table fruit

-- create table customer(customer_id int,customer_name varchar(50),customer_address varchar(50),city varchar(30),state varchar(30),ZIP_code int)
-- insert customer values(1,"John Doe","392 sunset street","New york","NT",10059);
-- insert customer values(2,"Mary Smith","6900 main street","Franceisco","CA",94032);
-- insert customer values(3,"Richard","2040 riverside street","Deigo","CA",92010);
-- insert customer values(4,"Cathy cook","4010 speedway","Tucson","AZ",85719)
-- alter table customer change customer_address address varchar(50)
-- alter table customer add column mobile_number int
-- delete from customer where mobile_number is null
-- insert customer values(1,"John Doe","392 sunset street","New york","NT",10059,986593058);
-- insert customer values(2,"Mary Smith","6900 main street","Franceisco","CA",94032,915986437);
-- insert customer values(3,"Richard","2040 riverside street","San Deigo","CA",92010,958643257);
-- insert customer values(4,"Cathy cook","4010 speedway","San deigo","CA",85719,896352147);
-- insert customer values(5,"Aliceh","123 oak street","San deigo","CA",94032,956238417);
-- insert customer values(6,"Bob","456 elim street","Chicago","IL",94032,945623817);
-- select city , customer_name from customer
-- update customer set mobile_number=822061234 where customer_name= "Mary Smith"
-- delete from customer where zip_code=94032
-- select * from customer where customer_id<5
-- select * from customer where state="CA"
-- alter table customer drop column mobile_number
-- Select * from customer

-- create table candidate( name varchar(30),mark int,department varchar(30))
-- insert candidate values("mani",1,"CSE");
-- insert candidate values("arun",2,"CSE");
-- insert candidate values("rahul",3,"CSE");
-- insert candidate values("divya",4,"CSE");
-- insert candidate values("praveena",5,"CSE");
-- insert candidate values("keni",6,"EEE");
-- insert candidate values("arul",7,"ECE");
-- insert candidate values("ragu",3,"ECE");
-- insert candidate values("dav",4,"EEE");
-- insert candidate values("pranav",5,"ECE");
-- select * from candidate
-- select sum(mark) from candidate
-- select sum(mark) as Total from candidate
-- select max(mark) from candidate
-- select min(mark) from candidate
-- select avg(mark) from candidate
-- select count(name) from candidate 

-- select * from candidate where department="CSE"  order by mark desc
-- select name,mark from candidate order by mark asc

-- select avg(mark) as AVG ,department from candidate group by department 
-- select count(name) as member, department from candidate group by department order by count(name) asc
-- select count(name) as member, department from candidate group by department order by department desc


-- create table employee ( employee_id int , first_name varchar (30),last_name varchar(30),dept varchar(30),salary int)
-- insert employee values(1,"john","doe","HR",55000);
-- insert employee values(2,"jane","smith","IT",60000);
-- insert employee values(3,"bob","son","IT",62000);
-- insert employee values(4,"alice","williams","HR",54000);
-- insert employee values(5,"Eva","Renu","finance",58000);
-- insert employee values(6,"mike","browny","finance",59000);

-- insert into employee(employee_id,first_name,last_name,dept,salary) 
-- values 
-- (7,"nike","man","IT",57000),
-- (8,"fall","spin","HR",51000)
-- select * from employee
-- select * from employee order by last_name asc
-- select * from employee where dept="IT" order by salary desc
-- select count(first_name) as no_of_emp , dept from employee group by dept 
-- select count(*) as no_of_emp , dept from employee group by dept 

-- select avg(salary),dept from employee group by dept order by avg(salary) desc
-- select avg(salary), dept from employee group by dept order by avg(salary) desc limit 1 

-- applying condition on the aggregate function use having clause
-- select avg(salary), dept from employee group by dept having avg(salary) <59000 
-- select avg(salary),dept,count(*) from employee group by dept having avg(salary)>55000 -- or count(first_name) >2
-- select avg(salary),dept,count(*) from employee group by dept having avg(salary)>55000 or count(first_name) >2

-- create table applicant (id int,name varchar(30),age int)
-- alter table applicant add grade varchar(30)
-- alter table applicant change grade final_grade varchar (30)
-- insert into applicant (id,name,age,final_grade) 
-- values
-- (101,"john",20,"A"),
-- (102,"jane",27,"B"),
-- (103,"bob",19,"C"),
-- (104,"alice",21,"A"),
-- (105,"charlie",20,"B"),
-- (106,"emma",23,"A"),
-- (107,"michale",20,"C"),
-- (108,"olivia",19,"B"),
-- (109,"william",21,"A"),
-- (110,"sophia",22,"C");
-- update applicant set age=21 where id =101
-- delete from applicant where id=101
-- select * from applicant where age >= 19
-- select * from applicant where name ="william"or name = "alice";
-- select * from applicant where name in ("william","alice");
-- select * from applicant where age >=20 and final_grade in ("A","B");
-- select * from applicant where age >=18 and age <=20;
-- select * from applicant where age between "18" and "20";
-- select * from applicant where age <20;
-- select * from applicant where final_grade <"C";
-- select count(*) as total from applicant ;
-- select avg(age) from applicant;
-- select avg(age) from applicant where final_grade="A" or final_grade="B";
-- select count(*),final_grade from applicant group by final_grade;
-- select avg(age),final_grade from applicant group by final_grade;
-- select count(*),final_grade from applicant group by final_grade;
-- select avg(age),final_grade from applicant group by final_grade having avg(age)<22;
-- select avg(age),final_grade from applicant where age between "20" and "25" group by final_grade ;
-- select * from applicant order by age asc;
-- select * from applicant where final_grade="A" or final_grade="B" order by age desc;
-- select * from applicant order by final_grade asc;
-- select * from applicant
