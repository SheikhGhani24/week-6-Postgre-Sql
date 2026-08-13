--  1. Get All tasks for a given project ordered by due date in asscending order with NULL at last

select * from tasks 
Where project_id = 2 order by due_date
ASC Nulls Last

-- 2. Count number of task per status
select status, count(*)
As task_count from tasks
group by status

-- 3. Show every user with their number of assigned tasks.
select users.name, count(tasks.assignee_id) 
from users
left join tasks on
users.id = tasks.assignee_id
group by users.name

-- 4. Get all tasks carrying a given tag name.
select tasks.title, tags.name 
from task_tags
inner join tasks 
on tasks.id = task_tags.task_id
inner join tags
on tags.id = task_tags.tag_id
where tags.name = 'Bug'

-- 5. Find overdue tasks that are not done, with the assignee's name.
select tasks.title, tasks.due_date, tasks.status, users.name
FROM tasks
inner join users 
on users.id = tasks.assignee_id 
where due_date < current_date
And status <> 'done'


-- 6. Get the top three users by number of completed tasks.
select users.name, count(tasks.id) As Completed_Tasks 
from users 
inner join tasks
on tasks.assignee_id = users.id
where tasks.status = 'done'
GROUP BY users.name
ORDER BY completed_tasks DESC
LIMIT 3;


-- 7. Projects that have no tasks.
select name from projects 
left join tasks on
projects.id = tasks.project_id
where tasks.id IS Null


-- 8. Calculate the average number of tags per task.
Select AVG(tag_count)
From (
    Select
    task_id,
    Count(tag_id) AS tag_count
From task_tags
Group by task_id
) AS tag_counts;
