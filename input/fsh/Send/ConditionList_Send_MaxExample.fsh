Instance: ConditionList_Testscript_Send-max-example
InstanceOf: TestScript
Description: "ConditionList_Testscript_Send-Create and send a maximum test example"
* insert Metadata
* id = "maximum-example"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/maximum-example"
* name = "ConditionListTestScript"


// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(maxExample, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


// Asserts


// Reoccuring asserts for all tests
* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponce is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle


// Specific for this test

/*
From test protocol step 3.3.1.2
1. ICPC-2 and SKS-D codes, including code, system, and if available, display value.
2. A text (DA: diagnosetekst). It must be a text that is explicit chosen by the general ractitioner (GP) and it must be different from the two codes.
3. Diagnosis status (category:status) = current (DA: Aktuel)
4. Diagnosis type (category:type) = encounter-diagnosis (DA: kontaktdiagnose)
5. Date and time of diagnosis onset (DA: debutdato)
6. Date and time of registration in the GP’s system (DA: Registreringsdato)
7. Date and time of abatement (DA: afslutningsdato)
8. clinicalStatus = resolved
9. A note (DA: tillægstekst)
*/

// 1.a
* insert assertConditionCodeExistsSKS // SKS code contained with code and system
* insert assertConditionCodeIncludeDisplaySKS // SKS code has a display value (warningOnly)
// 1.b
* insert assertConditionCodeExistsICPC2 // ICPC2 code contained with code and system
* insert assertConditionCodeIncludeDisplayICPC2 // ICPC2 code has a display value (warningOnly)
// 2
* insert assertCodeTextIncluded // condition has a code.text field
// 3
* insert assertDiagnosisStatusCurrent // Diagnosis:status = Current
// 4
* insert assertDiagnosisTypeEncounterDiagnosis // Diagnosis:type = encouter-diagnose
// 5
* insert assertOnsetDateExists
// 6
* insert assertAbatementDateExists
// 7
* insert assertRecordedDateExists

// 8
* insert assertClinicalStatusCodeResolved // Clinical Status code = Resolved
* insert assertClinicalStatusCodeSystem // Clinical status system exists
// 9
* insert assertAtachedNoteNotIncluded // no sharing of notes allowed in business rules (warning only)