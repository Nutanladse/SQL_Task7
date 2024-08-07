select * from project

select * from employee
---question1 

select p.project_name,p.progress,e.department,e.desigation from employee as e
inner join project as p
on p.project_id=e.project_id
group by project_name
order by progress
	
---question2
	
select p.task_name_name,p.progress,e.department,e.desigation from employee as e
inner join project as p
on p.project_id=e.project_id
group by task_name
order by task_name


