Instance: Conditionlist-testscript-send-01
InstanceOf: TestScript
Title: "Conditionlist_testscript"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-01"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-01"
* name = "ConditionListTestScript"

// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(multipleConditions, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


/*
Insert asserts
These are the tests performed on whats uploaded to the fhir-server
// * insert assertConditionCodeExists
*/

// Reoccuring asserts for all tests
* insert repeatingAsserts 


// Specific for this test


// number of conditions > 1
* insert assertMoreThanOneCondition

// bundle timestamp musn't be drawn from elsewere
* insert assertUniqueBundleTimeStamp

// No duplicates
* insert assertNoDuplicateConditionId
* insert assertNoDuplicateCondition
