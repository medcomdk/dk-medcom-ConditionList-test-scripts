Instance: ConditionList_Testscript_Send-SingularCondition-Basic-StructureDefinition-Validity
InstanceOf: TestScript
Title: "ConditionList Testscript Singular Condition StructureDefinition Validity"
Description: "Validate basic structure definition validity. In this script, only one single condition must be present."
* insert Metadata
* id = "Singular-Condition-Basic-StructureDefinition-Validity"
* description = "Validate basic structure definition validity. In this script, only one single condition must be present."
* title = "Send: ConditionList Testscript Singular Condition StructureDefinition Validity"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Singular-Condition-Basic-StructureDefinition-Validity"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertOneCondition

Instance: ConditionList_Testscript_Send-More-Than-One-Condition
InstanceOf: TestScript
Title: "Conditionlist Testscript Send More Than One Condition"
Description: "Validate that more that one entry with resource type Condition is in Bundle"
* insert Metadata
* id = "More-Than-One-Condition"
* description = " Validate that more than one entry with resource type Condition is in Bundle"
* title = "Send: Conditionlist Testscript Send More Than One Condition"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/More-Than-One-Condition"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertMoreThanOneCondition

Instance: ConditionList_Testscript_Send-SKS-d-CodeExists
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-SKS-d-Code"
Description: "ConditionList where the SKS-d code exists"
* insert Metadata
* id = "SKS-d-CodeExists"
* description = "ConditionList where the SKS-d code exists"
* title = "Send: ConditionList_Testscript_Send-SKS-d-Code"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/SKS-d-CodeExists"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionCodeExistsSKS

Instance: ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate
InstanceOf: TestScript
Title: "ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate"
Description: "Conditionlist where the Bundle timestamp is not equal to the composition date"
* insert Metadata
* id = "BundleTimestamp-Not-Equal-To-CompositionDate"
* description = "Validate that Conditionlist Bundle timestamp is not equal to the composition date"
* title = "Send: ConditionList_Testscript_Send-BundleTimestamp-Not-Equal-To-CompositionDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/BundleTimestamp-Not-Equal-To-CompositionDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertBundleTimestampNotEqualToCompositionDate

Instance: ConditionList_Testscript_Send-onsetDateTime-Before-AbatementDateTime
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-onsetDateTime_before_AbatementDateTime"
Description: "Validate the onsetDateTime is before the abatementDateTime"
* insert Metadata
* id = "onsetDateTime-Before-AbatementDateTime"
* description = "Validate that the onsetDateTime is before the abatementDateTime"
* title = "Send: Conditionlist_Testscript_Send-onsetDateTime_before_AbatementDateTime"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-Before-AbatementDateTime"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeBeforeAbatementDateTime

Instance: ConditionList_Testscript_Send-minimum-example
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-minimum-example"
Description: "Create a minimum example as stated in the test protocol, teststep 3.3.2.2"
* insert Metadata
* id = "minimum-example"
* description = "Validate that conditions in ConditionList Bundle contains SKS-D code, -system and code.text. Also validates that category.coding.code = '723506003' and that recordedDate exists."
* title = "Send: Conditionlist_Testscript_Send-minimum-example"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/minimum-example"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertOneCondition
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
* description = "Validate that no note text (DA: Tillægstekst) is present"
* title = "Send: ConditionList_Testscript_Send-NoteText-Not-Present"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/NoteText-Not-Present"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertNoteTextNotPresent

Instance: ConditionList_Testscript_Send-Register-conditions-with-different-RecordedDates
InstanceOf: TestScript
Title: "Conditionlist_Testscript_Send-Register-conditions-with-different-RecordedDates"
Description: "Validate that the system under test can generate a ConditionList containing Conditions with different recordedDates."
* insert Metadata
* id = "Register-conditions-with-different-RecordedDates"
* description = "Validate that a ConditionList contains Conditions with different recordedDates."
* title = "Send: Conditionlist_Testscript_Send-Register-conditions-with-different-RecordedDates"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Register-conditions-with-different-RecordedDates"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertConditionsHaveDifferentRecordedDates

Instance: ConditionList_Testscript_Send-MultipleConditions-Unique-Timestamp
InstanceOf: TestScript
Title: "Conditionlist Testscript Unique Timestamp"
Description: "Validate Bundle.timestamp for a ConditionList with multiple conditions to ensure that it is unique"
* insert Metadata
* id = "Multiple-Conditions-Unique-Timestamp"
* description = "Validate Bundle.timestamp for a ConditionList with multiple conditions to ensure that it is unique"
* title = "Send: Conditionlist Testscript Unique Timestamp"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Multiple-Conditions-Unique-Timestamp"
* name = "ConditionListTestScript"
// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertMoreThanOneCondition
* insert assertUniqueBundleTimeStamp

Instance: ConditionList_Testscript_Send-MultipleConditions-Unique-Condition-Id
InstanceOf: TestScript
Title: "ConditionList Testscript Unique Condition Ids"
Description: "Validate condition id's for a condition list with multiple conditions"
* insert Metadata
* id = "Multiple-Conditions-Unique-Condition-Id"
* description = "Validate no duplicate conditions and id's for a ConditionList with multiple conditions"
* title = "Send: ConditionList Testscript Unique Condition Ids"
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
* description = "Validate that an AbatementDate can be equal to recordedDate"
* title = "Send: ConditionList_Testscript_Send-AbatementDate-Equal-To-recordedDate"
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
* description = "Validate that a ConditionList can exist without containing any abatementDate"
* title = "Send: ConditionList_Testscript_Send-No-AbatementDate-Exists"
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
* description = "Validate that a ConditionList can exist without containing any OnsetDate"
* title = "Send: ConditionList_Testscript_Send-No-onsetDateTime-Exists"
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
* description = "Validate that the onsetDateTime is before the recordedDate in a ConditionList containing both dates"
* title = "Send: ConditionList_Testscript_onsetDateTime-is-before-recordedDate"
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
* description = "Validate that the onsetDateTime can be equal to the recordedDate"
* title = "Send: ConditionList_Testscript_onsetDateTime-is-equal-to-recordedDate"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/onsetDateTime-is-equal-to-recordedDate"
* name = "ConditionListTestScript"
* insert InitialzeConditionList(CList, 01, /FHIRSandbox/MedCom/ConditionListRCH/draft/fixtures/fixtures.json)
* insert assertonsetDateTimeEqualTorecordedDate
