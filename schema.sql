create table users (
id Integer primary Key,
name varchar(100),
email varchar(100) Unique Not Null,
created_at Timestamp Default Current_Timestamp
);
create table projects(
id Integer Primary Key,
name varchar(100) Not Null,
owner_id integer Not Null references users(id),
created_at Timestamp Default Current_Timestamp
);
create table tasks(
id integer primary key,
title varchar(100) not null,
description varchar(250),
status varchar(150) Check(status IN('todo','in_progress','done')),
priority integer check(priority Between 1 and 5),
project_id integer not null references projects(id),
assignee_id integer references users(id),
due_date Date,
created_at Timestamp Default Current_Timestamp
);
create table tags(
id integer primary key,
name varchar(100) unique not null
);
create table task_tags(
task_id integer references tasks(id),
tag_id integer references tags(id),
primary key(task_id, tag_id)
);


