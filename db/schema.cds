namespace db;

entity Employee {
    Key ID : Integer;
    name : String(155);
    email : String(155);
    phoneNumber : Integer;
}

entity Manager {
    Key ID : Integer;
    name : String(155);
    email : String(155);
    phoneNumber : Integer;
}

