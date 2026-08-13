Insert into users(id, name, email)
values
(1,'Ghani','Ghani@example.com'),
(2,'Ali','Ali@example.com'),
(3,'Ahmed','Ahmed@example.com'),
(4,'Zain','Zain@example.com'),
(5,'Abdullah','Abdullah@example.com')

Insert into projects(id,name,owner_id) 
values
(1,'E-commerce Website',1),
(2,'Todo App',2),
(3,'Portfolio Website',3),
 (4, 'Mobile App', 4)

Insert into tasks
    (id, title, description, status, priority, project_id, assignee_id, due_date)
values
	(1, 'Design homepage', 'Create the homepage layout', 'todo', 3, 1, 1, '2026-08-15'),
    (2, 'Create product API', 'Build API for products', 'in_progress', 5, 1, 2, '2026-08-16'),
    (3, 'Build product page', 'Create the product details page', 'done', 4, 1, 1, '2026-08-17'),
    (4, 'Add authentication', 'Implement login and registration', 'done', 5, 1, 3, '2026-08-18'),
    (5, 'Test checkout', 'Test the checkout process', 'todo', 2, 1, NULL, '2026-08-20'),

    (6, 'Create dashboard', 'Build the project dashboard', 'in_progress', 4, 2, 2, '2026-08-18'),
    (7, 'Add task API', 'Create CRUD API for tasks', 'done', 5, 2, 2, '2026-08-19'),
    (8, 'Implement filters', 'Add task filtering functionality', 'todo', 3, 2, 4, '2026-08-22'),
    (9, 'Write documentation', 'Document the project APIs', 'done', 2, 2, NULL, '2026-08-23'),

    (10, 'Design portfolio', 'Create portfolio website design', 'todo', 3, 3, 3, '2026-08-15'),
    (11, 'Build about page', 'Create the about page', 'in_progress', 2, 3, 4, '2026-08-19'),
    (12, 'Add contact form', 'Create the contact form', 'done', 4, 3, 3, '2026-08-14'),
    (13, 'Deploy website', 'Deploy portfolio website', 'todo', 5, 3, NULL, '2026-08-30'),

    (14, 'Optimize images', 'Optimize website images', 'done', 2, 1, 3, '2026-08-16'),
    (15, 'Fix mobile layout', 'Fix responsive mobile issues', 'todo', 4, 1, 4, '2026-08-17');

Insert into tags(id,name)
values
(1,'Frontend'),
(2,'Backend'),
(3,'Bug'),
(4,'Urgent'),
(5,'Documentation'),
(6,'Testing')

Insert into task_tags(task_id, tag_id)
values
(1,1),
(1,3),
(2,4),
(3,2),
(3,5),
(4,1),
(5,6),
(5,2),
(6,4),
(7,6),
(7,5),
(8,1),
(8,4),
(9,2),
(9,5),
(10,4),
(11,3),
(12,5),
(13,1),
(14,6),
(15,2),
(15,3)
