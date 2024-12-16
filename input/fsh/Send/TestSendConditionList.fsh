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


Instance: Conditionlist-testscript-send-03
InstanceOf: TestScript
Title: "Conditionlist_testscript3"
Description: "assertonsetDateTimeBeforeAbatementDateTime"
* insert Metadata
* id = "Conditionlist-testscript-send-03"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-03"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeBeforeAbatementDateTime


Instance: Conditionlist-testscript-send-04
InstanceOf: TestScript
Title: "Conditionlist_testscript4"
Description: "Send: Create a minimum example as stated in the test protocol, teststep 3.3.2.2"
* insert Metadata
* id = "Conditionlist-testscript-send-04"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-send-04"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionCodeExists
* insert AssertConditionTextExists
* insert AssertConditionStatusExists
* insert AssertDateAndTimeofRegistrationExists





