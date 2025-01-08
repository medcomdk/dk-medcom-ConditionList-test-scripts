RuleSet: InitialzeConditionList(type, number, fixture_path)
//* insert fixtureCreateMessage({fixture}, {type}, {number})
/*
Definerer hvilket type server der skal sende og modtage beskeden i testen. 
Definerer i dette tilfælde at det er en fhir-Client der sender noget til en fhir-server. 
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod.
ligesom validate kald til fhir-server
*/
* insert profileMedComConditionList


* insert fixtureCreateMessage({fixture_path}, {type}, {number})






// lav en ConditionList
* insert operationCreateConditionList({type},{number})


/*
Insert asserts
*/

* insert assertValidConditionList

* insert assertResponseCodeTest
* insert assertConditionCodeExists

// Reoccuring asserts for all tests
* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponce is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle
* insert assertDanishTimeZone       // Validate time zones on timestamp of conditionList