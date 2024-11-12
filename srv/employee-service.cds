using db as db from '../db/schema';

@cds.redirection.target
service EmployeesService {
    entity Employees as projection on db.Employee;
}
annotate EmployeesService with @(requires: 'support');

@cds.redirection.target
service ManagersService {
    entity Managers as projection on db.Manager;
}
annotate ManagersService with @(requires: 'admin');
