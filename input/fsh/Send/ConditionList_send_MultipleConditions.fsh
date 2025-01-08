Instance: ConditionList_Testscript_Send-multipleConditions
InstanceOf: TestScript
Title: "Conditionlist_testscript"
Description: "ConditionList_Testscript_Send-Create, validate and send a Conditionlist with multiple conditions"
* insert Metadata
* id = "Multiple-Conditions"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Multiple-Conditions"
* name = "ConditionListTestScript"

// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(multipleConditions, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


/*
Insert asserts
These are the tests performed on whats uploaded to the fhir-server
// * insert assertConditionCodeExists
*/




// Specific for this test


// number of conditions > 1
* insert assertMoreThanOneCondition

// bundle timestamp musn't be drawn from elsewere
* insert assertUniqueBundleTimeStamp

// No duplicates
* insert assertNoDuplicateConditionId
* insert assertNoDuplicateCondition