MariaDB [(none)]> create database LeaveManagementSystem;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> 
MariaDB [(none)]> use LeaveManagementSystem;
Database changed
MariaDB [LeaveManagementSystem]> 
MariaDB [LeaveManagementSystem]> create table UserData(
    -> UserID varchar(10),
    -> PassWord varchar(6),
    -> Name varchar(15),
    -> Designation varchar(15),
    -> Date date,
    -> LeaveFrom date,
    -> LeaveTo date,
    -> Annual double ,
    -> Casual double ,
    -> Sick double ,
    -> Remarks varchar(10),
    -> Approval varchar(10)
    -> );
Query OK, 0 rows affected (0.830 sec)

MariaDB [LeaveManagementSystem]> 
MariaDB [LeaveManagementSystem]> desc UserData;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| UserID      | varchar(10) | YES  |     | NULL    |       |
| PassWord    | varchar(6)  | YES  |     | NULL    |       |
| Name        | varchar(15) | YES  |     | NULL    |       |
| Designation | varchar(15) | YES  |     | NULL    |       |
| Date        | date        | YES  |     | NULL    |       |
| LeaveFrom   | date        | YES  |     | NULL    |       |
| LeaveTo     | date        | YES  |     | NULL    |       |
| Annual      | double      | YES  |     | NULL    |       |
| Casual      | double      | YES  |     | NULL    |       |
| Sick        | double      | YES  |     | NULL    |       |
| Remarks     | varchar(10) | YES  |     | NULL    |       |
| Approval    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
12 rows in set (0.016 sec)

MariaDB [LeaveManagementSystem]> 
MariaDB [LeaveManagementSystem]> insert into UserData values
    -> ('EMP003','545687','Daniel Husk','Prob Lecturer','2022-04-18','2022-04-19','2022-04-23','','','05','Medical Leave','Approved'),
    -> ('EMP001','123456','Saliny Perera','Temporary Lecturer','2022-04-21','2022-04-22','2022-04-23','01','','','','Approved'),
    -> ('EMP002','875641','Ravi Fernando','Senior Lecturer','2022-04-21','2022-04-22','2022-04-23','','01','','','Approved'),
    -> ('Ad0001','282895','Sheril Gunarathne','Dean-FAS','2022-04-22','2022-04-23','2022-04-25','3','','','','Approved'),
    -> ('EMP001','123456','Saliny Perera','Temporary Lecturer','2022-04-30','2022-05-02','2022-05-05','03','','','','Approved'),
    -> ('EMP002','875641','Ravi Fernando','Senior Lecturer','2022-05-10','2022-05-11','2022-05-12','1','','','','Approved'),
    -> ('Mgt002','568978','Raini Silva','HOD-Physical Science','2022-05-10','2022-05-11','2022-05-12','1','','','','Approved'),
    ->   ('EMP004','190774','M.K.Vijaykumar','Temporary Lecturer','2022-05-12','2022-05-13','2022-05-14','','1','','','Approved'),
    ->   ('EMP005','542369','Roshan De Silva','Temporary Lecturer','2022-05-16','2022-05-16','2022-05-20','','','5','Medical leave','Approved'),
    ->   ('EMP001','123456','Saliny Perera','Temporary Lecturer','2022-05-17','2022-05-17','2022-05-18','','1','','','Approved'),
    ->   ('EMP006','159874','Sunil Bandara','Senior Lecturer','2022-05-17','2022-05-18','2022-05-20','','2','','','Approved'),
    ->   ('EMP004','190774','M.K.Vijaykumar','Temporary Lecturer','2022-05-20','2022-05-20','2022-05-21','','1','','','Approved'),
    ->   ('EMP007','849562','Nishani Amarasinghe','Assistant Lecturer','2022-05-20','2022-05-20','2022-05-21','','1','','','Approved'),
    ->   ('EMP006','542369','Roshan De Silva','Assistant Lecturer','2022-05-30','2022-05-30','2022-05-31','1','','','','Pending'),
    ->   ('EMP008','784561','Sarath Wijesooriya','Senior Lecturer','2022-05-30','2022-05-30','2022-06-01','2','','','','Approved'),
    ->   ('EMP009','159874','Sunil Bandara','Senior Lecturer','2022-05-31','2022-05-31','2022-06-01','1','','','','Approved'),
    ->   ('Mgt001','112546','Shan Fonseka','Hod-Management','2022-06-01','2022-06-02','2022-06-03','1','','','','Approved'),
    ->   ('Ad0002','145654','Charles Godwin','Deaputy Rector','2022-06-03','2022-06-04','2022-06-07','4','','','','Approved'),
    ->   ('Mgt005','789564','Pahan Rodrigro','HOD-Bio Science','2022-06-10','2022-06-11','2022-06-18','','','08','Medical Leave','Approved'),
    ->   ('Ad0003','486515','Kamani Deegoda','Registar','2022-06-22','2022-06-23','2022-06-23','0.5','','','','Approved'),
    -> ('EMP016','421675','Vidusha Karthik','Senior Lecturer','2022-07-01','2022-07-02','2022-07-03','','','1','','Approved'),
    -> ('EMP017','060170','Kasun Nayanaith','Senior Lecturer','2022-07-02','2022-07-03','2022-07-05','','','02','','Approved'),
    ->   ('EMP010','134852','Danu Jesh','Senior Lecturer','2022-07-16','2022-07-17','2022-07-17','','','01','','Approved'),
    -> ('EMP011','146524','Kaushi Hewawasam','Temporary Lecturer','2022-07-20','2022-07-21','2022-07-23','03','','','','Approved'),
    -> ('EMP012','326457','Rajesh Wasu','Temporary Lecturer','2022-08-19','2022-08-20','2022-08-21','','02','','','Approved'),
    -> ('EMP013','854176','Virath Perera','Prob Lecturer','2022-08-20','2022-08-21','2022-08-21','','0.5','','','Approved'),
    -> ('EMP014','654987','Kaushi Hewawasam','Temporary Lecturer','2022-08-20','2022-08-21','2022-08-23','03','','','','Approved'),
    -> ('EMP015','789456','Kaweesha Premadasa','Temporary Lecturer','2022-08-21','2022-08-21','2022-08-21','','0.5','','','Approved'),
    -> ('EMP011','146524','Kaushi Hewawasam','Temporary Lecturer','2022-09-10','2022-09-10','2022-09-10','0.5','','','','Approved'),
    -> ('EMP013','854176','Virath Perera','Prob Lecturer','2022-09-13','2022-09-15','2022-09-17','','','02','','Approved');
Query OK, 30 rows affected, 84 warnings (0.453 sec)
Records: 30  Duplicates: 0  Warnings: 84

MariaDB [LeaveManagementSystem]>   
MariaDB [LeaveManagementSystem]> 
MariaDB [LeaveManagementSystem]>   select * from UserData;
+--------+----------+-----------------+-----------------+------------+------------+------------+--------+--------+------+------------+----------+
| UserID | PassWord | Name            | Designation     | Date       | LeaveFrom  | LeaveTo    | Annual | Casual | Sick | Remarks    | Approval |
+--------+----------+-----------------+-----------------+------------+------------+------------+--------+--------+------+------------+----------+
| EMP003 | 545687   | Daniel Husk     | Prob Lecturer   | 2022-04-18 | 2022-04-19 | 2022-04-23 |      0 |      0 |    5 | Medical Le | Approved |
| EMP001 | 123456   | Saliny Perera   | Temporary Lectu | 2022-04-21 | 2022-04-22 | 2022-04-23 |      1 |      0 |    0 |            | Approved |
| EMP002 | 875641   | Ravi Fernando   | Senior Lecturer | 2022-04-21 | 2022-04-22 | 2022-04-23 |      0 |      1 |    0 |            | Approved |
| Ad0001 | 282895   | Sheril Gunarath | Dean-FAS        | 2022-04-22 | 2022-04-23 | 2022-04-25 |      3 |      0 |    0 |            | Approved |
| EMP001 | 123456   | Saliny Perera   | Temporary Lectu | 2022-04-30 | 2022-05-02 | 2022-05-05 |      3 |      0 |    0 |            | Approved |
| EMP002 | 875641   | Ravi Fernando   | Senior Lecturer | 2022-05-10 | 2022-05-11 | 2022-05-12 |      1 |      0 |    0 |            | Approved |
| Mgt002 | 568978   | Raini Silva     | HOD-Physical Sc | 2022-05-10 | 2022-05-11 | 2022-05-12 |      1 |      0 |    0 |            | Approved |
| EMP004 | 190774   | M.K.Vijaykumar  | Temporary Lectu | 2022-05-12 | 2022-05-13 | 2022-05-14 |      0 |      1 |    0 |            | Approved |
| EMP005 | 542369   | Roshan De Silva | Temporary Lectu | 2022-05-16 | 2022-05-16 | 2022-05-20 |      0 |      0 |    5 | Medical le | Approved |
| EMP001 | 123456   | Saliny Perera   | Temporary Lectu | 2022-05-17 | 2022-05-17 | 2022-05-18 |      0 |      1 |    0 |            | Approved |
| EMP006 | 159874   | Sunil Bandara   | Senior Lecturer | 2022-05-17 | 2022-05-18 | 2022-05-20 |      0 |      2 |    0 |            | Approved |
| EMP004 | 190774   | M.K.Vijaykumar  | Temporary Lectu | 2022-05-20 | 2022-05-20 | 2022-05-21 |      0 |      1 |    0 |            | Approved |
| EMP007 | 849562   | Nishani Amarasi | Assistant Lectu | 2022-05-20 | 2022-05-20 | 2022-05-21 |      0 |      1 |    0 |            | Approved |
| EMP006 | 542369   | Roshan De Silva | Assistant Lectu | 2022-05-30 | 2022-05-30 | 2022-05-31 |      1 |      0 |    0 |            | Pending  |
| EMP008 | 784561   | Sarath Wijesoor | Senior Lecturer | 2022-05-30 | 2022-05-30 | 2022-06-01 |      2 |      0 |    0 |            | Approved |
| EMP009 | 159874   | Sunil Bandara   | Senior Lecturer | 2022-05-31 | 2022-05-31 | 2022-06-01 |      1 |      0 |    0 |            | Approved |
| Mgt001 | 112546   | Shan Fonseka    | Hod-Management  | 2022-06-01 | 2022-06-02 | 2022-06-03 |      1 |      0 |    0 |            | Approved |
| Ad0002 | 145654   | Charles Godwin  | Deaputy Rector  | 2022-06-03 | 2022-06-04 | 2022-06-07 |      4 |      0 |    0 |            | Approved |
| Mgt005 | 789564   | Pahan Rodrigro  | HOD-Bio Science | 2022-06-10 | 2022-06-11 | 2022-06-18 |      0 |      0 |    8 | Medical Le | Approved |
| Ad0003 | 486515   | Kamani Deegoda  | Registar        | 2022-06-22 | 2022-06-23 | 2022-06-23 |    0.5 |      0 |    0 |            | Approved |
| EMP016 | 421675   | Vidusha Karthik | Senior Lecturer | 2022-07-01 | 2022-07-02 | 2022-07-03 |      0 |      0 |    1 |            | Approved |
| EMP017 | 060170   | Kasun Nayanaith | Senior Lecturer | 2022-07-02 | 2022-07-03 | 2022-07-05 |      0 |      0 |    2 |            | Approved |
| EMP010 | 134852   | Danu Jesh       | Senior Lecturer | 2022-07-16 | 2022-07-17 | 2022-07-17 |      0 |      0 |    1 |            | Approved |
| EMP011 | 146524   | Kaushi Hewawasa | Temporary Lectu | 2022-07-20 | 2022-07-21 | 2022-07-23 |      3 |      0 |    0 |            | Approved |
| EMP012 | 326457   | Rajesh Wasu     | Temporary Lectu | 2022-08-19 | 2022-08-20 | 2022-08-21 |      0 |      2 |    0 |            | Approved |
| EMP013 | 854176   | Virath Perera   | Prob Lecturer   | 2022-08-20 | 2022-08-21 | 2022-08-21 |      0 |    0.5 |    0 |            | Approved |
| EMP014 | 654987   | Kaushi Hewawasa | Temporary Lectu | 2022-08-20 | 2022-08-21 | 2022-08-23 |      3 |      0 |    0 |            | Approved |
| EMP015 | 789456   | Kaweesha Premad | Temporary Lectu | 2022-08-21 | 2022-08-21 | 2022-08-21 |      0 |    0.5 |    0 |            | Approved |
| EMP011 | 146524   | Kaushi Hewawasa | Temporary Lectu | 2022-09-10 | 2022-09-10 | 2022-09-10 |    0.5 |      0 |    0 |            | Approved |
| EMP013 | 854176   | Virath Perera   | Prob Lecturer   | 2022-09-13 | 2022-09-15 | 2022-09-17 |      0 |      0 |    2 |            | Approved |
+--------+----------+-----------------+-----------------+------------+------------+------------+--------+--------+------+------------+----------+
30 rows in set (0.001 sec)

MariaDB [LeaveManagementSystem]> 
MariaDB [LeaveManagementSystem]> notee
