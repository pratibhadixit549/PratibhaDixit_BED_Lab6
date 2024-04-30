create database if not exists ssrs;

use ssrs; 



-- Database Script
  -- Snippet-1
    ```
    -- Disable safe updates
    SET SQL_SAFE_UPDATES = 0;

    -- Delete any existing rows
    delete from student;

    -- Revert to the previous value
    SET SQL_SAFE_UPDATES = 1;    
    ```
  -- Snippet-2
    ```
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (1, 'Suresh', 'Reddy', 'B.Tech', 'India');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (2, 'Murali', 'Mohan', 'B.Arch', 'Canada');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (3, 'Daniel', 'Denson', 'B.Tech', 'New Zealand');
    INSERT INTO student (id, first_name, last_name, course, country) VALUES (4, 'Tanya', 'Gupta', 'B.Com', 'USA');    
    ```




-- Database Script
  -- Snippet-2
    ```
    insert into roles (role_id, name) values (1, 'NORMAL_USER');
    insert into roles (role_id, name) values (2, 'ADMIN_USER');    
    ```
  -- Snippet-3
    ```
    insert into users_roles (user_id, role_id) values (
    (select user_id from users where username = 'varun'),
    (select role_id from roles where name = 'ADMIN_USER')
    );


    insert into users_roles (user_id, role_id) values (
    (select user_id from users where username = 'sanjay'),
    (select role_id from roles where name = 'NORMAL_USER')
    );    
    ```
    



-- Database Script
  -- Snippet-1
    ```
    -- Disable safe updates
    SET SQL_SAFE_UPDATES = 0;

    -- Delete any existing rows
    delete from users;

    -- Revert to the previous value
    SET SQL_SAFE_UPDATES = 1;            
    ```

-- Password Definition
  -- Plain text Password
    ```
    mysecretpassword
    ```
  -- Encrypted Password
    ```
$2a$12$AlmwFO6GXq5U6iPgew.97e6JGwzMFg3RhaCHUQFa5OrPs5bbxg5my
    ```

-- BCrypt Online
-- https://bcrypt-generator.com/


-- Data Population Script
  ```
  -- This corresponds to the plain text password value - 'mypassword'
  set @SSRS_PASSWORD = '$2a$12$AlmwFO6GXq5U6iPgew.97e6JGwzMFg3RhaCHUQFa5OrPs5bbxg5my';

  insert into users (user_id, username, password) values (1, 'varun', @SSRS_PASSWORD);

  insert into users (user_id, username, password) values (2, 'sanjay', @SSRS_PASSWORD);  
  ```


