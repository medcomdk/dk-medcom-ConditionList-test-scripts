Instance: Conditionlist-testscript-send-01
InstanceOf: TestScript
Title: "Conditionlist_testscript"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-01"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-01"
* name = "ConditionListTestScript"

* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)





// * insert assertResponseCodeTest
// * insert assertPayload