Instance: ConditionList_Testscript_Send-SKS-d-CodeExists
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-SKS-d-Code"
Description: "Send: ConditionList where the SKS-d code exists"
* insert Metadata
* id = "SKS-d-CodeExists"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/SKS-d-CodeExists"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertConditionCodeExists

Instance: ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate"
Description: "Send: Conditionlist where the Bundle timestamp is not equal to the composition date"
* insert Metadata
* id = "BundleTimestamp-Not-Equal-To-CompositionDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/BundleTimestamp-Not-Equal-To-CompositionDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertBundleTimestampNotEqualToCompositionDate


Instance: ConditionList_Testscript_Send-onsetDateTime-Before-AbatementDateTime
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-onsetDateTime_before_AbatementDateTime"
Description: "assertonsetDateTimeBeforeAbatementDateTime"
* insert Metadata
* id = "onsetDateTime-Before-AbatementDateTime"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-Before-AbatementDateTime"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertonsetDateTimeBeforeAbatementDateTime


Instance: ConditionList_Testscript_Send-minimum-example
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-minimum-example"
Description: "Send: Create a minimum example as stated in the test protocol, teststep 3.3.2.2"
* insert Metadata
* id = "minimum-example"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/minimum-example"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertConditionCodeExists
* insert AssertConditionTextExists
* insert AssertConditionStatusExists
* insert AssertDateAndTimeofRegistrationExists

Instance: ConditionList_Testscript_Send-NoteText-Not-Present
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-NoteText-Not-Present"
Description: "ConditionList_Testscript_Send-NoteText-Not-Present"
* insert Metadata
* id = "NoteText-Not-Present"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/NoteText-Not-Present"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertNoteTextNotPresent

Instance: ConditionList_Testscript_Send-Register-two-conditions-with-different-RecordedDates
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-Register-two-conditions-with-different-RecordedDates"
Description: "Conditionlist_Testscript_Send-Register-two-conditions-with-different-RecordedDates"
* insert Metadata
* id = "Register-two-conditions-with-different-RecordedDates"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Register-two-conditions-with-different-RecordedDates"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionList_TestScripts/v100 - Send/fixtures/fixtures.json)
* insert assertNumberOfConditionsMoreThanOne
* insert assertConditionsHaveDifferentRecordedDates