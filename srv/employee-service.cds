using db as db from '../db/schema';

service EmployeesService {

    entity Employees as projection on db.Employee;

    // Annotate the Employees entity to track changes
    annotate Employees with @changelog: {
        keys: [ ID ]
    } {
        name    @changelog;
        email   @changelog;
        phoneNumber @changelog;
    }
}




//@cds.redirection.target
//annotate EmployeesService with @(requires: 'support');
//annotate EmployeesService.Employees with @odata.draft.enabled; 



