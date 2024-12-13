Instance: Conditionlist-testscript-send-multipleConditions
InstanceOf: TestScript
Title: "Conditionlist_testscript"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-multipleConditions"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-multipleConditions"
* name = "ConditionListSendMultipleConditions"

// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(multipleConditions, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


/*
Insert asserts
These are the tests performed on whats uploaded to the fhir-server
// * insert assertConditionCodeExists
*/

// Reoccuring asserts for all tests
* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponce is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle
* insert assertDanishTimeZone       // Validate time zones on timestamp of conditionList


// Specific for this test


// number of conditions > 1
* insert assertMoreThanOneCondition

// bundle timestamp musn't be drawn from elsewere
* insert assertUniqueBundleTimeStamp

// No duplicates
* insert assertNoDuplicateConditionId
* insert assertNoDuplicateCondition
