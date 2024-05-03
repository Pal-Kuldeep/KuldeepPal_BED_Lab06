	SET SQL_SAFE_UPDATES = 0;
    
    drop table if exists student;

    INSERT INTO student (id, first_name, last_name, course, country) VALUES (1, 'Suresh', 'Reddy', 'B.Tech', 'India');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (2, 'Murali', 'Mohan', 'B.Arch', 'Canada');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (3, 'Daniel', 'Denson', 'B.Tech', 'New Zealand');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (4, 'Tanya', 'Gupta', 'B.Com', 'USA');    

    

    

	set @SSRS_PASSWORD = '$2a$12$V8Ug4sekmu1c69Lcx81WmudzhpWKPGrrfHbyGCUIVIFbXz6glOxpa';
	
	/*password = greatlearninggl*/


	insert into users (user_id, username, password) values (1, 'pal', @SSRS_PASSWORD);

	insert into users (user_id, username, password) values (2, 'kuldeep', @SSRS_PASSWORD);
	
	insert into roles (role_id, name) values (1, 'NORMAL_USER');
    insert into roles (role_id, name) values (2, 'ADMIN_USER');    



    insert into users_roles (user_id, role_id) values (
    (select user_id from users where username = 'varun'),
    (select role_id from roles where name = 'ADMIN_USER')
    );


    insert into users_roles (user_id, role_id) values (
    (select user_id from users where username = 'sanjay'),
    (select role_id from roles where name = 'NORMAL_USER')
    );    

