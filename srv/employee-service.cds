using db as db from '../db/schema';

service EmployeesService {


    //annotate EmployeesService with @(requires: 'admin');
    entity Employees as projection on db.Employee;




    // Annotate the Employees entity to track changes
    annotate Employees with @changelog: {
        keys: [ ID ]
    } {
        name        @changelog @PersonalData.IsPotentiallyPersonal; 
        email       @changelog @PersonalData.IsPotentiallyPersonal;
        phoneNumber @changelog @PersonalData.IsPotentiallyPersonal;
    }



    // Additional annotations for Personal Data
    annotate Employees with @PersonalData: {
        EntitySemantics: 'DataSubject',
        DataSubjectRole: 'Employee'
    } {
        ID          @PersonalData.FieldSemantics : 'DataSubjectID';
        name        @PersonalData.IsPotentiallyPersonal;
        email       @PersonalData.IsPotentiallyPersonal;
        phoneNumber @PersonalData.IsPotentiallyPersonal;
    }



}





//@cds.redirection.target
//annotate EmployeesService with @(requires: 'support');
//annotate EmployeesService.Employees with @odata.draft.enabled; 



