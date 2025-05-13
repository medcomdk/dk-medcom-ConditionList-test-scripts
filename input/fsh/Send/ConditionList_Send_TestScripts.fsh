Instance: ConditionList_Testscript_Send-SingularCondition-Basic-StructureDefinition-Validity
InstanceOf: TestScript
Title: "ConditionList Testscript Singular Condition StructureDefinition Validity"
Description: "Validate basic structure definition validity"
* insert Metadata
* id = "Singular-Condition-Basic-StructureDefinition-Validity"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Singular-Condition-Basic-StructureDefinition-Validity"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertOneCondition

Instance: ConditionList_Testscript_Send-More-Than-One-Condition
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-More-Than-One-Condition"
Description: "Conditionlist_Testscript_Send-More-Than-One-Condition"
* insert Metadata
* id = "More-Than-One-Condition"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/More-Than-One-Condition"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertMoreThanOneCondition

Instance: ConditionList_Testscript_Send-SKS-d-CodeExists
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-SKS-d-Code"
Description: "Send: ConditionList where the SKS-d code exists"
* insert Metadata
* id = "SKS-d-CodeExists"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/SKS-d-CodeExists"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionCodeExists

Instance: ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate"
Description: "Send: Conditionlist where the Bundle timestamp is not equal to the composition date"
* insert Metadata
* id = "BundleTimestamp-Not-Equal-To-CompositionDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/BundleTimestamp-Not-Equal-To-CompositionDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertBundleTimestampNotEqualToCompositionDate

Instance: ConditionList_Testscript_Send-onsetDateTime-Before-AbatementDateTime
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-onsetDateTime_before_AbatementDateTime"
Description: "assertonsetDateTimeBeforeAbatementDateTime"
* insert Metadata
* id = "onsetDateTime-Before-AbatementDateTime"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-Before-AbatementDateTime"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeBeforeAbatementDateTime

Instance: ConditionList_Testscript_Send-minimum-example
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-minimum-example"
Description: "Send: Create a minimum example as stated in the test protocol, teststep 3.3.2.2"
* insert Metadata
* id = "minimum-example"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/minimum-example"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
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
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertNoteTextNotPresent

Instance: ConditionList_Testscript_Send-Register-two-conditions-with-different-RecordedDates
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-Register-two-conditions-with-different-RecordedDates"
Description: "Conditionlist_Testscript_Send-Register-two-conditions-with-different-RecordedDates"
* insert Metadata
* id = "Register-two-conditions-with-different-RecordedDates"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Register-two-conditions-with-different-RecordedDates"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertTwoConditions
* insert assertConditionsHaveDifferentRecordedDates

Instance: ConditionList_Testscript_Send-MultipleConditions-Unique-Timestamp
InstanceOf: TestScript
Title: "Conditionlist Testscript Unique Timestamp"
Description: "Validate timestamps for a condition list with multiple conditions"
* insert Metadata
* id = "Multiple-Conditions-Unique-Timestamp"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Multiple-Conditions-Unique-Timestamp"
* name = "ConditionListTestScript"
// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertMoreThanOneCondition
// bundle timestamp musn't be drawn from elsewere
* insert assertUniqueBundleTimeStamp

Instance: ConditionList_Testscript_Send-MultipleConditions-Unique-Condition-Id
InstanceOf: TestScript
Title: "ConditionList Testscript Unique Condition Ids"
Description: "Validate condition id's for a condition list with multiple conditions"
* insert Metadata
* id = "Multiple-Conditions-Unique-Condition-Id"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Multiple-Conditions-Unique-Condition-Id"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertMoreThanOneCondition
* insert assertNoDuplicateConditionId
* insert assertNoDuplicateCondition


Instance: ConditionList_Testscript_Send-AbatementDate-Equal-To-recordedDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-AbatementDate-Equal-To-recordedDate"
Description: "assertAbatementDate is equal to recordedDate"
* insert Metadata
* id = "AbatementDate-Equal-To-recordedDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/AbatementDate-Equal-To-recordedDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertOneCondition
* insert assertAbatementDateTimeEqualTorecordedDate


Instance: ConditionList_Testscript_Send-No-AbatementDate-Exists
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-No-AbatementDate-Exists"
Description: "Validate no existance of abatement date"
* insert Metadata
* id = "No-AbatementDate-Exists"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/No-AbatementDate-Exists"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertAbatementDateNotExists


Instance: ConditionList_Testscript_Send-No-onsetDateTime-Exists
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-No-onsetDateTime-Exists"
Description: "Validate no existance of onsetDateTime"
* insert Metadata
* id = "No-onsetDateTime-Exists"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/No-onsetDateTime-Exists"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertOnsetDateNotExists

Instance: ConditionList_Testscript_Send-onsetDateTime-is-before-recordedDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_onsetDateTime-is-before-recordedDate"
Description: "Validate the onsetDateTime is before the recordedDate"
* insert Metadata
* id = "onsetDateTime-is-before-recordedDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-is-before-recordedDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeBeforerecordedDate

Instance: ConditionList_Testscript_Send-onsetDateTime-is-equal-to-recordedDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_onsetDateTime-is-equal-to-recordedDate"
Description: "Validate the onsetDateTime is equal to the recordedDate"
* insert Metadata
* id = "onsetDateTime-is-equal-to-recordedDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-is-equal-to-recordedDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeEqualTorecordedDate
