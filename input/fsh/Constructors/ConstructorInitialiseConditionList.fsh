RuleSet: InitialzeConditionList(type, number, fixture_path)

/*
    Definerer hvilket type server der skal sende og modtage beskeden i testen. 
    Definerer i dette tilfælde at det er en fhir-Client der sender noget til en fhir-server. 
*/
* insert originClient
* insert destinationServer

 
// Describes the profile that is validated against. Similar to validation calls to the fhir-server
* insert profileMedComConditionList

* insert fixtureCreateMessage({fixture_path}, {type}, {number})

// lav en ConditionList
* insert operationCreateConditionList({type},{number})

// Assert reoccuring asserts for all tests
* insert assertConditionCodeExists
* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponse is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle
* insert assertDanishTimeZone       // Validate time zones on timestamp of conditionList