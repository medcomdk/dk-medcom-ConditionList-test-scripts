RuleSet: InitialzeConditionList(type, number, fixture_path)


/*
Defines which type of server should send and receive the message in the test.
In this case, it defines that it is a FHIR client sending something to a FHIR server.
*/

* insert originClient
* insert destinationServer

/* 
Describes the profile that is validated against.
Similar to the validate call to the FHIR server.
*/
* insert profileMedComConditionList


* insert fixtureCreateMessage({fixture_path}, {type}, {number})

// create operation for the posting of ConditionList
* insert operationCreateConditionList({type},{number})
