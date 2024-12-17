Instance: Conditionlist-testscript-send-01
InstanceOf: TestScript
Title: "Conditionlist_testscript1"
Description: "Send: Create, validate and send a Conditionlist"
* insert Metadata
* id = "Conditionlist-testscript-send-01"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-01"
* name = "ConditionListTestScript1"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionCodeExists


Instance: Conditionlist-testscript-send-02
InstanceOf: TestScript
Title: "Conditionlist_testscript2"
Description: "assertBundleTimestampNotEqualToCompositionDate"
* insert Metadata
* id = "Conditionlist-testscript-send-02"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-02"
* name = "ConditionListTestScript2"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertBundleTimestampNotEqualToCompositionDate


Instance: Conditionlist-testscript-send-03
InstanceOf: TestScript
Title: "Conditionlist_testscript3"
Description: "assertBundleTimestampNotEqualToCompositionDate"
* insert Metadata
* id = "Conditionlist-testscript-send-03"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-03"
* name = "ConditionListTestScript3"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertNoteTextNotPresent


Instance: Conditionlist-testscript-send-04
InstanceOf: TestScript
Title: "Conditionlist_testscript4"
Description: "assertConditionsHaveDifferentRecordedDates"
* insert Metadata
* id = "Conditionlist-testscript-send-04"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-04"
* name = "ConditionListTestScript4"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertNumberOfConditionsMoreThanOne
* insert assertConditionsHaveDifferentRecordedDates

//SUNE? * insert assertResponseCodeTest


// * insert assertResponseCodeTest
// * insert assertPayload