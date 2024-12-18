
The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. However, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). They are created using FSH and published using the FHIR publisher. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-conditionlist/#12-use-cases) are the basis for the tests. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account on TouchStone and to create a test system. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Abbreviations and naming

**Abbreviations:**

The system under test is abbreviated 'SUT'.

**Test script naming:**

Only send test scripts are required and available for ConditionList.
The name of the test scripts is constituted by ConditionList_Testscript_[send]-[test-name], describing a ConditionList FHIR document being sent.

**Patient flows:** These will be named ConditionList_Testscript_PF-[send]-[imp/emer/tec]-[number]. 'HospitalNotifciation_Testscript_' is not shown in the naming below. 

### Send ConditionList test scripts
When sending a ConditionList, a POST operation is required for all types of ConditionList FHIR documents.

#### Test scripts for sending a ConditionList FHIR Document

[Test scripts for test can be found here in TouchStone.](INDSÆT LINK HER)

<!-- RET TABEL MED ConditionList TEST SCRIPTS. Nuværende indhold er Theas første bud/eksempel inden vi gik i gang -->
| **Test script name** | **Use case <br> code** | **Description** | **Type** | **Precondition** |
|---|---|---|---|---|
| **New**[^1] |  |  |  |  |
| [S1-new](./TestScript-conditionlist-send-new.html) | S1 | Send: New ConditionList with one diagnosis |  |  |
| [S1-new](./TestScript-conditionlist-send-new.html) | S1 | Send: New ConditionList with one diagnosis with abatement datetime |  |  | 
| **Update**[^2] [^3]  |  |  |  |  |
| [S1-update](./TestScript-conditionlist-send-update-timestamp.html) | S1 | Send: Update timestamp for condition in ConditionList  |  | New ConditionList |
| [S1-update](./TestScript-conditionlist-send-update-status.html) | S1 | Send: Update status for condition in ConditionList  |  | New ConditionList |
| [S1-update](./TestScript-conditionlist-send-update-type.html) | S1 | Send: Update type for condition in ConditionList  |  | New ConditionList |
| [S1-remove](./TestScript-conditionlist-send-remove-one.html) | S1 | Send: Remove condition in ConditionList  |  | New ConditionList |

[^1] - Send en ny ConditionList med forskelligt indhold. Test evt. også, at indhold mangler.
[^2] - Send først en ny ConditionList, efterfulgt af en opdateret ConditionList, hvor bestemte elementer er opdateret
[^3] - Send først en ny ConditionList, efterfulgt af en opdateret ConditionList, hvor én eller flere diagnoser ikke fremgår.


| **Type** | **Use case <br> code** | **Description** | **Type** | **Precondition** |
|---|---|---|---|---|
| **New**[^1] |  |  |  |  |
| [S1-new](./TestScript-conditionlist-send-new.html) | S1 | Send: New ConditionList with one diagnosis |  |  |
| [S1-new](./TestScript-conditionlist-send-new.html) | S1 | Send: New ConditionList with one diagnosis with abatement datetime |  |  | 
| **Update**[^2] [^3]  |  |  |  |  |
| [S1-update](./TestScript-conditionlist-send-update-timestamp.html) | S1 | Send: Update timestamp for condition in ConditionList  |  | New ConditionList |
| [S1-update](./TestScript-conditionlist-send-update-status.html) | S1 | Send: Update status for condition in ConditionList  |  | New ConditionList |
| [S1-update](./TestScript-conditionlist-send-update-type.html) | S1 | Send: Update type for condition in ConditionList  |  | New ConditionList |
| [S1-remove](./TestScript-conditionlist-send-remove-one.html) | S1 | Send: Remove condition in ConditionList  |  | New ConditionList |

[^1] - Send en ny ConditionList med forskelligt indhold. Test evt. også, at indhold mangler.
[^2] - Send først en ny ConditionList, efterfulgt af en opdateret ConditionList, hvor bestemte elementer er opdateret
[^3] - Send først en ny ConditionList, efterfulgt af en opdateret ConditionList, hvor én eller flere diagnoser ikke fremgår.