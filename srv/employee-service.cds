using db as db from '../db/schema';

@cds.redirection.target
service EmployeesService {
    entity Employees as projection on db.Employee;
}
//annotate EmployeesService with @(requires: 'support');
//annotate EmployeesService.Employees with @odata.draft.enabled; 



