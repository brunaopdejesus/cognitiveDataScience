
--- Exiba o nome (last_name) de todos os funcion�rios sem departamento.
select last_name, department_name
from employees e left join departments d
on d.deparment_id = e.department_id
where d.deparment_id is null;

--- Exiba o nome (department_name) de todos os departamentos SEM FUNCION�RIOS.
select *
from departments d left outer join employees e
on d.deparment_id=e.department_id
where e.department_id is null;

--- Exiba o nome do funcion�rio (last_name) e o nome da regi�o (region_name) em que ele trabalha.
select last_name, region_name
from employees e
inner join departments d on d.department_id = e.department_id
inner join locations l on l.location_id = d.location_id
inner join countries c on c.country_id = l.country_id
inner join regions r on r.region_id = c.region_id;


--- Exiba o nome do chefe (last_name), o cargo do chefe (job_id), o nome dos subordinados (last_name) e o cargo dos subordinados (job_id).
select b.last_name boss, b.job_id job_boss,
       w.last_name worker, w.job_id job_worker
from employees b
inner join employees w on b.employee_id = w.manager_id
order by 2;


--- Exiba o nome do departamento (department_name) e o nome do gerente do departamento (department_name)
select department_name, last_name manager
from departments d
inner join employees e on e.employee_id = d.manager_id;