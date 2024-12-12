Instance: Conditionlist-testscript-send-01
InstanceOf: TestScript
Title: "Conditionlist_testscript"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-01"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-01"
* name = "ConditionListTestScript"

// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


/*
Insert asserts
These are the tests performed on whats uploaded to the fhir-server
*/


* insert repeatingAsserts // Reoccuring asserts for all tests


// Specific for this test
* insert assertConditionCodeExists
* insert assertMoreThanOneCondition
* insert assertNoDuplicateCondition
* insert assertUniqueBundleTimeStamp
