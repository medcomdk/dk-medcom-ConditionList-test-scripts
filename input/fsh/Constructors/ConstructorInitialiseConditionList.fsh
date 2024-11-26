RuleSet: InitialzeConditionList

/*
Definerer hvilket type server der skal sende og modtage beskeden i testen. 
Definerer i dette tilfælde at det er en fhir-Client der sender noget til en fhir-server. 
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod
Bruges til at lave validate kald til fhir-server
*/
* insert profileMedComConditionListBundle




