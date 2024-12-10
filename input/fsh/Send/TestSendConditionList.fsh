Instance: Conditionlist-testscript-send-01
InstanceOf: TestScript
Title: "Conditionlist_testscript1"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-01"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-01"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionCodeExists


Instance: Conditionlist-testscript-send-02
InstanceOf: TestScript
Title: "Conditionlist_testscript2"
Description: "assertBundleTimestampNotEqualToCompositionDate"
* insert Metadata
* id = "Conditionlist-testscript-send-02"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-02"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertBundleTimestampNotEqualToCompositionDate


//SUNE? * insert assertResponseCodeTest


// * insert assertResponseCodeTest
// * insert assertPayload