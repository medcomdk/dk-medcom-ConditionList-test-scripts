

Instance: Conditionlist-testscript-max-eksample
InstanceOf: TestScript
Description: "Create and send the maximum test example"
* insert Metadata
* id = "Conditionlist-testscript-max-eksample"
* url = "http://medcomfhir.dk/ig/conditionlisttestscript/Conditionlist-testscript-max-eksample"
* name = "ConditionListSendMaxEksample"


// Initialise the conditionlist, including operations.
* insert InitialzeConditionList(maxExample, 01, /FHIRSandbox/MedCom/ConditionList/CLBundle/fixtures/fixtures.json)


/*
Insert asserts
These are the tests performed on whats uploaded to the fhir-server
// * insert assertConditionCodeExists
*/

// Reoccuring asserts for all tests

* insert assertPayload              // assert that the post is a bundle
* insert assertResponseCodeTest     // assert that the serverResponce is 200 or 201
* insert assertValidConditionList   // Validate the conditionlist in the bundle
* insert assertDanishTimeZone       // Validate time zones on timestamp of conditionList

// Specific for this test

* insert assertConditionCodeExistsSKS
* insert assertConditionCodeExistsICPC2
* insert assertDiagnosisTypeEncounterDiagnosis
* insert assertOnsetDateExists
* insert assertAbatementDateExists
* insert assertRecordedDateExists
* insert assertClinicalStatusCodeResolved
* insert assertAtachedNoteNotIncluded


/*
From test protocol step 3.3.1.2
ICPC-2 and SKS-D codes, including code, system, and if available, display value.
A text (DA: diagnosetekst). It must be a text that is explicit chosen by the general ractitioner (GP) and it must be different from the two codes.
Diagnosis status (category:status) = current (DA: Aktuel)
Diagnosis type (category:type) = encounter-diagnosis (DA: kontaktdiagnose)
Date and time of diagnosis onset (DA: debutdato)
Date and time of registration in the GP’s system (DA: Registreringsdato)
Date and time of abatement (DA: afslutningsdato)
clinicalStatus = resolved
A note (DA: tillægstekst)

*/