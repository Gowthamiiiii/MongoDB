%%jsoniq

let $company :=
{
  "departments": [
    {
      "dno": 1,
      "dname": "Headquarters",
      "locations": ["Houston"],
      "manager": { "mssn": "888665555", "startDate": "19-JUN-1971"  },
      "employees": ["888665555"],
      "projectsControlled": [20]
    },
    {
      "dno": 4,
      "dname": "Administration",
      "locations": [ "Stafford"  ],
      "manager": { "mssn": "987654321", "startDate": "01-JAN-1985"  },
      "employees": ["987654321", "987987987", "999887777"],
      "projectsControlled": [10,30]
    },
    {
      "dno": 5,
      "dname": "Research",
      "locations": ["Bellaire","Sugarland","Houston"],
      "manager": { "mssn": "333445555", "startDate": "22-MAY-1978"  },
      "employees": ["123456789","333445555","666884444","453453453"],
      "projectsControlled": [1,2,3]
    },
    {
      "dno": 6,
      "dname": "Software",
      "locations": ["Atlanta","Sacramento"],
      "manager": { "mssn": "111111100", "startDate": "15-MAY-1999"  },
      "employees": ["111111100","555555500","111111101","111111102","111111103",
                  "333333300","333333301","555555501"],
      "projectsControlled": [61,62,63]
    },
    {
      "dno": 7,
      "dname": "Hardware",
      "locations": ["Milwaukee"],
      "manager": { "mssn": "444444400", "startDate": "15-MAY-1998"  },
      "employees": ["222222200","222222201","222222202","222222203","222222204",
                  "222222205","444444400","444444401","444444402","444444403"],
      "projectsControlled": [91,92]
    },
    {
      "dno": 8,
      "dname": "Sales",
      "locations": ["Chicago","Dallas","Philadelphia","Seattle","Miami"],
      "manager": { "mssn": "555555500", "startDate": "01-JAN-1997"  },
      "employees": ["666666600","666666601","666666602","666666603","666666604",
                  "666666605","666666606","666666607","666666608","666666609",
                  "666666610","666666611","666666612","666666613"],
      "projectsControlled": []
    }
  ],
  "employees": [
    {
      "ssn": "333445555",
      "worksFor": 5,
      "supervisor": "888665555",
      "manages": 5,
      "fname": "Franklin",
      "minit": "T",
      "lname": "Wong",
      "dob": "08-DEC-1945",
      "address": "638 Voss, Houston, TX",
      "sex": "M",
      "salary": 40000,
      "dependents": [ { "dependentName": "Alice", "sex": "F", "dob": "05-APR-1976", "relationship": "Daughter"  },
                     { "dependentName": "Theodore", "sex": "M", "dob": "25-OCT-1973", "relationship": "Son" },
                     { "dependentName": "Joy", "sex": "F", "dob": "03-MAY-1948", "relationship": "Spouse" }
                  ],
      "supervisees": [ "123456789","666884444","453453453"  ],
      "projects": [ { "pno": 1, "hours": 5.0 }, { "pno": 2, "hours": 5.0 }, { "pno": 3, "hours": 10.0 },
                   { "pno": 10, "hours": 10.0 }, { "pno": 20, "hours": 10.0 }
                ]
    },
    {
      "ssn": "888665555",
      "worksFor": 1,
      "manages": 1,
      "fname": "James",
      "minit": "E",
      "lname": "Borg",
      "dob": "10-NOV-1927",
      "address": "450 Stone, Houston, TX",
      "sex": "M",
      "salary": 55000,
      "supervisees": [ "333445555","987654321"  ],
      "projects": [ { "pno": 20, "hours": 10.0 } ]
    },
    {
      "ssn": "987654321",
      "worksFor": 4,
      "supervisor": "888665555",
      "manages": 4,
      "fname": "Jennifer",
      "minit": "S",
      "lname": "Wallace",
      "dob": "20-JUN-1931",
      "address": "291 Berry, Bellaire, TX",
      "sex": "F",
      "salary": 43000,
      "dependents": [ { "dependentName": "Abner", "sex": "M", "dob": "29-FEB-1932", "relationship": "Spouse"  } ],
      "supervisees": [ "999887777", "987987987"  ],
      "projects": [ { "pno": 30, "hours": 20.0 }, { "pno": 20, "hours": 15.0 } ]
    },
    {
      "ssn": "123456789",
      "worksFor": 5,
      "supervisor": "333445555",
      "fname": "John",
      "minit": "B",
      "lname": "Smith",
      "dob": "09-JAN-1955",
      "address": "731 Fondren, Houston, TX",
      "sex": "M",
      "salary": 30000,
      "dependents": [ { "dependentName": "Michael", "sex": "M", "dob": "01-JAN-1978", "relationship": "Son"  },
                     { "dependentName": "Alice", "sex": "F", "dob": "31-DEC-1978", "relationship": "Daughter" },
                     { "dependentName": "Elizabeth", "sex": "F", "dob": "05-MAY-1957", "relationship": "Spouse" }
                  ],
      "projects": [ { "pno": 1, "hours": 32.5 }, { "pno": 2, "hours": 7.5 } ] 
    },
    {
      "ssn": "999887777",
      "worksFor": 4,
      "supervisor": "987654321",
      "fname": "Alicia",
      "minit": "J",
      "lname": "Zelaya",
      "dob": "19-JUL-1958",
      "address": "3321 Castle, Spring, TX",
      "sex": "F",
      "salary": 25000,
      "projects": [ { "pno": 30, "hours": 30.0 }, { "pno": 10, "hours": 10.0 } ]
    },
    {
      "ssn": "666884444",
      "worksFor": 5,
      "supervisor": "333445555",
      "fname": "Ramesh",
      "minit": "K",
      "lname": "Narayan",
      "dob": "15-SEP-1952",
      "address": "971 Fire Oak, Humble, TX",
      "sex": "M",
      "salary": 38000,
      "projects": [ { "pno": 3, "hours": 40.0 } ]
    },
    {
      "ssn": "453453453",
      "worksFor": 5,
      "supervisor": "333445555",
      "fname": "Joyce",
      "minit": "A",
      "lname": "English",
      "dob": "31-JUL-1962",
      "address": "5631 Rice, Houston, TX",
      "sex": "F",
      "salary": 25000,
      "projects": [ { "pno": 1, "hours": 20.0 }, { "pno": 2, "hours": 20.0 } ]
    },
    {
      "ssn": "987987987",
      "worksFor": 4,
      "supervisor": "987654321",
      "fname": "Ahmad",
      "minit": "V",
      "lname": "Jabbar",
      "dob": "29-MAR-1959",
      "address": "980 Dallas, Houston, TX",
      "sex": "M",
      "salary": 25000,
      "projects": [ { "pno": 10, "hours": 35.0 }, { "pno": 30, "hours": 5.0 } ]
    },
    {
      "ssn": "111111100",
      "worksFor": 6,
      "manages": 6,
      "fname": "Jared",
      "minit": "D",
      "lname": "James",
      "dob": "10-OCT-1966",
      "address": "123 Peachtree, Atlanta, GA",
      "sex": "M",
      "salary": 85000,
      "supervisees": [ "111111101", "111111102", "111111103"  ],
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "444444400",
      "worksFor": 7,
      "manages": 7,
      "fname": "Alex",
      "minit": "D",
      "lname": "Freed",
      "dob": "09-OCT-1950",
      "address": "4333 Pillsbury, Milwaukee, WI",
      "sex": "M",
      "salary": 89000,
      "dependents": [ { "dependentName": "Johnny", "sex": "M", "dob": "04-APR-1997", "relationship": "Son"  },
                     { "dependentName": "Tommy", "sex": "M", "dob": "07-APR-1999", "relationship": "Son" }
                  ],
      "supervisees": [ "444444401", "444444402", "444444403"  ],
      "projects": [ { "pno": 91, "hours": 40.0  } ]
    },
    {
      "ssn": "555555500",
      "worksFor": 6,
      "manages": 8,
      "fname": "John",
      "minit": "C",
      "lname": "James",
      "dob": "30-JUN-1975",
      "address": "7676 Bloomington, Sacramento, CA",
      "sex": "M",
      "salary": 81000,
      "supervisees": [ "555555501"  ],
      "projects": [ { "pno": 92, "hours": 40.0 } ]
    },
    {
      "ssn": "111111101",
      "worksFor": 6,
      "supervisor": "111111100",
      "fname": "Jon",
      "minit": "C",
      "lname": "Jones",
      "dob": "14-NOV-1967",
      "address": "111 Allgood, Atlanta, GA",
      "sex": "M",
      "salary": 45000,
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "111111102",
      "worksFor": 6,
      "supervisor": "111111100",
      "fname": "Justin",
      "lname": "Mark",
      "dob": "12-JAN-1966",
      "address": "2342 May, Atlanta, GA",
      "sex": "M",
      "salary": 40000,
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "111111103",
      "worksFor": 6,
      "supervisor": "111111100",
      "fname": "Brad",
      "minit": "C",
      "lname": "Knight",
      "dob": "13-FEB-1968",
      "address": "176 Main St., Atlanta, GA",
      "sex": "M",
      "salary": 44000,
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "222222200",
      "worksFor": 7,
      "fname": "Evan",
      "minit": "E",
      "lname": "Wallis",
      "dob": "16-JAN-1958",
      "address": "134 Pelham, Milwaukee, WI",
      "sex": "M",
      "salary": 92000,
      "supervisees": [ "222222201", "222222202", "222222203"  ],
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "222222201",
      "worksFor": 7,
      "supervisor": "222222200",
      "fname": "Josh",
      "minit": "U",
      "lname": "Zell",
      "dob": "22-MAY-1954",
      "address": "266 McGrady, Milwaukee, WI",
      "sex": "M",
      "salary": 56000,
      "supervisees": [ "222222204", "222222205"  ],
      "projects": [ { "pno": 62, "hours": 38.0 } ]
    },
    {
      "ssn": "222222202",
      "worksFor": 7,
      "supervisor": "222222200",
      "fname": "Andy",
      "minit": "C",
      "lname": "Vile",
      "dob": "21-JUN-1944",
      "address": "1967 Jordan, Milwaukee, WI",
      "sex": "M",
      "salary": 53000,
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "222222203",
      "worksFor": 7,
      "supervisor": "222222200",
      "fname": "Tom",
      "minit": "G",
      "lname": "Brand",
      "dob": "16-DEC-1966",
      "address": "112 Third St, Milwaukee, WI",
      "sex": "M",
      "salary": 62500,
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "222222204",
      "worksFor": 7,
      "supervisor": "222222201",
      "fname": "Jenny",
      "minit": "F",
      "lname": "Vos",
      "dob": "11-NOV-1967",
      "address": "263 Mayberry, Milwaukee, WI",
      "sex": "F",
      "salary": 61000,
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "222222205",
      "worksFor": 7,
      "supervisor": "222222201",
      "fname": "Chris",
      "minit": "A",
      "lname": "Carter",
      "dob": "21-MAR-1960",
      "address": "565 Jordan, Milwaukee, WI",
      "sex": "F",
      "salary": 43000,
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "333333300",
      "worksFor": 6,
      "fname": "Kim",
      "minit": "C",
      "lname": "Grace",
      "dob": "23-OCT-1970",
      "address": "6677 Mills Ave, Sacramento, CA",
      "sex": "F",
      "salary": 79000,
      "projects": [ { "pno": 63, "hours": 40.0 } ]
    },
    {
      "ssn": "333333301",
      "worksFor": 6,
      "supervisor": "333333300",
      "fname": "Jeff",
      "minit": "H",
      "lname": "Chase",
      "dob": "07-JAN-1970",
      "address": "145 Bradbury, Sacramento, CA",
      "sex": "M",
      "salary": 44000,
      "projects": [ { "pno": 63, "hours": 36.0 } ]
    },
    {
      "ssn": "444444401",
      "worksFor": 7,
      "supervisor": "444444400",
      "fname": "Bonnie",
      "minit": "S",
      "lname": "Bays",
      "dob": "19-JUN-1956",
      "address": "111 Hollow, Milwaukee, WI",
      "sex": "F",
      "salary": 70000,
      "dependents": [ { "dependentName": "Chris", "sex": "M", "dob": "19-APR-1969", "relationship": "Spouse"  } ],
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "444444402",
      "worksFor": 7,
      "supervisor": "444444400",
      "fname": "Alec",
      "minit": "C",
      "lname": "Best",
      "dob": "18-JUN-1966",
      "address": "233 Solid, Milwaukee, WI",
      "sex": "M",
      "salary": 60000,
      "dependents": [ { "dependentName": "Sam", "sex": "M", "dob": "14-FEB-1964", "relationship": "Spouse"  } ],
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "444444403",
      "worksFor": 7,
      "supervisor": "444444400",
      "fname": "Sam",
      "minit": "S",
      "lname": "Snedden",
      "dob": "31-JUL-1977",
      "address": "987 Windy St, Milwaukee, WI",
      "sex": "M",
      "salary": 48000,
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "555555501",
      "worksFor": 6,
      "supervisor": "555555500",
      "fname": "Nandita",
      "minit": "K",
      "lname": "Ball",
      "dob": "16-APR-1969",
      "address": "222 Howard, Sacramento, CA",
      "sex": "M",
      "salary": 62000,
      "projects": [ { "pno": 92, "hours": 34.0 } ]
    },
    {
      "ssn": "666666600",
      "worksFor": 8,
      "fname": "Bob",
      "minit": "B",
      "lname": "Bender",
      "dob": "17-APR-1968",
      "address": "8794 Garfield, Chicago, IL",
      "sex": "M",
      "salary": 96000,
      "supervisees": [ "666666601", "666666602"  ]
    },
    {
      "ssn": "666666601",
      "worksFor": 8,
      "supervisor": "666666600",
      "fname": "Jill",
      "minit": "J",
      "lname": "Jarvis",
      "dob": "14-JAN-1966",
      "address": "6234 Lincoln, Chicago, IL",
      "sex": "F",
      "salary": 36000,
      "supervisees": [ "666666603"  ],
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "666666602",
      "worksFor": 8,
      "supervisor": "666666600",
      "fname": "Kate",
      "minit": "W",
      "lname": "King",
      "dob": "16-APR-1966",
      "address": "1976 Boone Trace, Chicago, IL",
      "sex": "F",
      "salary": 44000,
      "supervisees": [ "666666607", "666666608", "666666609"  ]
    },
    {
      "ssn": "666666603",
      "worksFor": 8,
      "supervisor": "666666601",
      "fname": "Lyle",
      "minit": "G",
      "lname": "Leslie",
      "dob": "09-JUN-1963",
      "address": "417 Hancock Ave, Chicago, IL",
      "sex": "M",
      "salary": 41000,
      "supervisees": [ "666666604", "666666605"  ],
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "666666604",
      "worksFor": 8,
      "supervisor": "666666603",
      "fname": "Billie",
      "minit": "J",
      "lname": "King",
      "dob": "01-JAN-1960",
      "address": "556 Washington, Chicago, IL",
      "sex": "F",
      "salary": 38000,
      "supervisees": [ "666666606"  ],
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "666666605",
      "worksFor": 8,
      "supervisor": "666666603",
      "fname": "Jon",
      "minit": "A",
      "lname": "Kramer",
      "dob": "22-AUG-1964",
      "address": "1988 Windy Creek, Seattle, WA",
      "sex": "M",
      "salary": 41500,
      "projects": [ { "pno": 92, "hours": 40.0 } ]
    },
    {
      "ssn": "666666606",
      "worksFor": 8,
      "supervisor": "666666604",
      "fname": "Ray",
      "minit": "H",
      "lname": "King",
      "dob": "16-AUG-1949",
      "address": "213 Delk Road, Seattle, WA",
      "sex": "M",
      "salary": 44500,
      "projects": [ { "pno": 91, "hours": 40.0 } ]
    },
    {
      "ssn": "666666607",
      "worksFor": 8,
      "supervisor": "666666602",
      "fname": "Gerald",
      "minit": "D",
      "lname": "Small",
      "dob": "15-MAY-1962",
      "address": "122 Ball Street, Dallas, TX",
      "sex": "M",
      "salary": 29000,
      "supervisees": [ "666666610"  ],
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "666666608",
      "worksFor": 8,
      "supervisor": "666666602",
      "fname": "Arnold",
      "minit": "A",
      "lname": "Head",
      "dob": "19-MAY-1967",
      "address": "233 Spring St, Dallas, TX",
      "sex": "M",
      "salary": 33000,
      "projects": [ { "pno": 62, "hours": 40.0 } ]
    },
    {
      "ssn": "666666609",
      "worksFor": 8,
      "supervisor": "666666602",
      "fname": "Helga",
      "minit": "C",
      "lname": "Pataki",
      "dob": "11-MAR-1969",
      "address": "101 Holyoke St, Dallas, TX",
      "sex": "F",
      "salary": 32000,
      "projects": [ { "pno": 63, "hours": 40.0 } ]
    },
    {
      "ssn": "666666610",
      "worksFor": 8,
      "supervisor": "666666607",
      "fname": "Naveen",
      "minit": "B",
      "lname": "Drew",
      "dob": "23-MAY-1970",
      "address": "198 Elm St, Philadelphia, PA",
      "sex": "M",
      "salary": 34000,
      "supervisees": [ "666666611"  ],
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "666666611",
      "worksFor": 8,
      "supervisor": "666666610",
      "fname": "Carl",
      "minit": "E",
      "lname": "Reedy",
      "dob": "21-JUN-1977",
      "address": "213 Ball St, Philadelphia, PA",
      "sex": "M",
      "salary": 32000,
      "supervisees": [ "666666612"  ],
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "666666612",
      "worksFor": 8,
      "supervisor": "666666611",
      "fname": "Sammy",
      "minit": "G",
      "lname": "Hall",
      "dob": "11-JAN-1970",
      "address": "433 Main Street, Miami, FL",
      "sex": "M",
      "salary": 37000,
      "supervisees": [ "666666613"  ],
      "projects": [ { "pno": 61, "hours": 40.0 } ]
    },
    {
      "ssn": "666666613",
      "worksFor": 8,
      "supervisor": "666666612",
      "fname": "Red",
      "minit": "A",
      "lname": "Bacher",
      "dob": "21-MAY-1980",
      "address": "196 Elm Street, Miami, FL",
      "sex": "M",
      "salary": 33500,
      "projects": [ { "pno": 61, "hours": 30.0 }, { "pno": 62, "hours": 10.0 }, { "pno": 63, "hours": 10.0 } ]
    }
  ],
  "projects": [
    {
      "pnumber": 1,
      "controllingDepartment": 5,
      "pname": "Product X",
      "plocation": "Bellaire",
      "workers": [ { "essn": "123456789", "hours": 32.5 },
                  { "essn": "453453453", "hours": 20.0 },
                  { "essn": "333445555", "hours": 5.0 }
               ]
    },
    {
      "pnumber": 2,
      "controllingDepartment": 5,
      "pname": "Product Y",
      "plocation": "Sugarland",
      "workers": [ { "essn": "123456789", "hours": 7.5 },
                  { "essn": "453453453", "hours": 20.0 },
                  { "essn": "333445555", "hours": 5.0 }
               ]
    },
    {
      "pnumber": 3,
      "controllingDepartment": 5,
      "pname": "Product Z",
      "plocation": "Houston",
      "workers": [ { "essn": "666884444", "hours": 40.0 },
                  { "essn": "333445555", "hours": 10.0 }
               ]
    },
    {
      "pnumber": 10,
      "controllingDepartment": 4,
      "pname": "Computerization",
      "plocation": "Stafford",
      "workers": [ { "essn": "333445555", "hours": 10.0 },
                  { "essn": "999887777", "hours": 10.0 },
                  { "essn": "987987987", "hours": 35.0 }
               ]
    },
    {
      "pnumber": 20,
      "controllingDepartment": 1,
      "pname": "Reorganization",
      "plocation": "Houston",
      "workers": [ { "essn": "333445555", "hours": 10.0 },
                  { "essn": "987654321", "hours": 15.0 },
                  { "essn": "888665555", "hours": 0.0 }
               ]
    },
    {
      "pnumber": 30,
      "controllingDepartment": 4,
      "pname": "New Benefits",
      "plocation": "Stafford",
      "workers": [ { "essn": "999887777", "hours": 30.0 },
                  { "essn": "987987987", "hours": 5.0 },
                  { "essn": "987654321", "hours": 20.0 }
               ]
    },
    {
      "pnumber": 61,
      "controllingDepartment": 6,
      "pname": "Operating Systems",
      "plocation": "Jacksonville",
      "workers": [ { "essn": "111111100", "hours": 40.0 },
                  { "essn": "111111101", "hours": 40.0 },
                  { "essn": "111111102", "hours": 40.0 },
                  { "essn": "111111103", "hours": 40.0 },
                  { "essn": "666666607", "hours": 40.0 },
                  { "essn": "666666610", "hours": 40.0 },
                  { "essn": "666666611", "hours": 40.0 },
                  { "essn": "666666612", "hours": 40.0 },
                  { "essn": "666666613", "hours": 30.0 }
               ]
    },
    {
      "pnumber": 62,
      "controllingDepartment": 6,
      "pname": "Database Systems",
      "plocation": "Birmingham",
      "workers": [
                  { "essn": "222222200", "hours": 40.0 },
                  { "essn": "222222201", "hours": 38.0 },
                  { "essn": "222222202", "hours": 40.0 },
                  { "essn": "222222203", "hours": 40.0 },
                  { "essn": "222222204", "hours": 40.0 },
                  { "essn": "222222205", "hours": 40.0 },
                  { "essn": "666666608", "hours": 40.0 },
                  { "essn": "666666613", "hours": 10.0 }
               ]
    },
    {
      "pnumber": 63,
      "controllingDepartment": 6,
      "pname": "Middleware",
      "plocation": "Jackson",
      "workers": [
                  { "essn": "333333300", "hours": 40.0 },
                  { "essn": "333333301", "hours": 36.0 },
                  { "essn": "666666609", "hours": 40.0 },
                  { "essn": "666666613", "hours": 10.0 }
               ]
    },
    {
      "pnumber": 91,
      "controllingDepartment": 7,
      "pname": "Inkjet Printers",
      "plocation": "Phoenix",
      "workers": [
                  { "essn": "444444400", "hours": 40.0 },
                  { "essn": "444444401", "hours": 40.0 },
                  { "essn": "444444402", "hours": 40.0 },
                  { "essn": "444444403", "hours": 40.0 },
                  { "essn": "666666601", "hours": 40.0 },
                  { "essn": "666666603", "hours": 40.0 },
                  { "essn": "666666604", "hours": 40.0 },
                  { "essn": "666666606", "hours": 40.0 }
               ]
    },
    {
      "pnumber": 92,
      "controllingDepartment": 7,
      "pname": "Laser Printers",
      "plocation": "Las Vegas",
      "workers": [
                  { "essn": "555555500", "hours": 40.0 },
                  { "essn": "555555501", "hours": 34.0 },
                  { "essn": "666666605", "hours": 40.0 }
               ]
    }
  ]
}


let $res_proj := for $comp in $company.projects[]
  where $comp.controllingDepartment = 5
  return $comp.pnumber

for $comp in $company.employees[]
let $record := $comp.projects[].pno
where every $ele in $res_proj satisfies $ele = $record[$ele]
return {name : $comp.fname || " " || $comp.lname} 