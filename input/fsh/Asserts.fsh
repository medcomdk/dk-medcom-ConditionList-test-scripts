////////////////////////////////// Asserts for ConditionList ///////////////////////////
RuleSet: assertValidConditionList
* test[=].action[+].assert.description = "Validate the bundle against medcomConditionList profile"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.validateProfileId = "MedComConditionListBundle"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertOneCondition
* test[=].action[+].assert.description  = "Confirm that one entry with resourceType Condition is in bundle"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).count() = 1"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertMoreThanOneCondition
* test[=].action[+].assert.description  = "Confirm more that one entry with resourceType 'Condition' in bundle"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).count() > 1"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertTwoConditions
* test[=].action[+].assert.description  = "Confirm more that one entry with resourceType 'Condition' in bundle"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).count() = 2"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertConditionCodeExists
* test[=].action[+].assert.description = "Validate that a Condition contains an SKS-D code system and code"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.4.12').exists()" //RCH: Tjekker kun for system, ikke for kode. Burde også teste at koden eksisterer.
* test[=].action[=].assert.warningOnly = false

RuleSet: assertBundleTimestampNotEqualToCompositionDate
* test[=].action[+].assert.description = "Validate that the bundle.timestamp is different from composition.date"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.timestamp != Bundle.entry.resource.ofType(Composition).date"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertonsetDateTimeBeforeAbatementDateTime 
* test[=].action[+].assert.description = "Validate the onsetDateTime is before the abatementDateTime"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).where(abatement).where(onset < abatement).exists()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertNoteTextNotPresent
* test[=].action[+].assert.description = "It is not allowed to share a Condition.note.text (Danish: Tillægstekst). Validate that a document is made without any conditions containing a Condition.note.text."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).note.text.exists().not()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertConditionsHaveDifferentRecordedDates
* test[=].action[+].assert.description = "Validate that the system under test can generate a ConditionList containing Conditions with different recordedDates."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).recordedDate.count() = Bundle.entry.resource.ofType(Condition).recordedDate.distinct().count()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertUniqueBundleTimeStamp
* test[=].action[+].assert.description  = "Validate that bundle timestamp is not reused from other timestamps"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "(Bundle.entry.resource.ofType(Condition).select(recordedDate.toString() | onset.toString() | abatement.toString()) contains Bundle.timestamp.toString() ).not()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertNoDuplicateConditionId
* test[=].action[+].assert.description  = "Validates that no two condition id's in the composition are the same "
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry[0].resource.section.entry.reference.isDistinct()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertNoDuplicateCondition
* test[=].action[+].assert.description  = "Validates no duplicate conditions in conditionList"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).isDistinct()" //RCH: Skal vi egentligt teste dette?
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertDanishTimeZone
* test[=].action[+].assert.description  = "Validate that timezone is either +01 or +02"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.timestamp.toString().substring(19,3) = '+01' or Bundle.timestamp.toString().substring(19,3) = '+02'"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertAbatementDateTimeEqualTorecordedDate
* test[=].action[+].assert.description  = "Validate that abatementDateTime is equal to recordedDate"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).where(abatement).where(recordedDate = abatement).exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertAbatementDateNotExists
* test[=].action[+].assert.description  = "Validate no existance of abatementDateTime"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).abatement.exists().not()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertOnsetDateNotExists
* test[=].action[+].assert.description  = "Validate no existance of onsetDateTime"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).onset.exists().not()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertonsetDateTimeBeforerecordedDate
* test[=].action[+].assert.description = "Validate the onsetDateTime is before the recordedDate"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).where(onset).where(onset < recordedDate).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertonsetDateTimeEqualTorecordedDate
* test[=].action[+].assert.description = "Validate the onsetDateTime is equal to the recordedDate"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).where(onset).where(onset = recordedDate).exists()"
* test[=].action[=].assert.warningOnly = false

//// Asserts for min example ////////
RuleSet: AssertConditionTextExists
* test[=].action[+].assert.description = "Validate that a code.text (DA: diagnosetekst) exists"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).code.text.exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: AssertConditionStatusExists
* test[=].action[+].assert.description = "Validate that the diagnosis status is Resolved"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).category.coding.where(system = 'http://snomed.info/sct' and code = '723506003').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: AssertDateAndTimeofRegistrationExists
* test[=].action[+].assert.description = "Confirm that recordedDate exists"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Condition).recordedDate.exists()"
* test[=].action[=].assert.warningOnly = false


//// Asserts for max example ////////
RuleSet: assertConditionCodeExistsSKS
* test[=].action[+].assert.description = "ConfValidate that the SKS-D codes, including code, system, and if available, display value."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(select(system = 'urn:oid:1.2.208.176.2.4.12' and code.exists() )).count() = Bundle.entry.resource.ofType(Condition).count()" //RCH: Er denne det samme vi ønsker i assertConditionCodeExists?
* test[=].action[=].assert.warningOnly = false


RuleSet: assertConditionCodeIncludeDisplaySKS
* test[=].action[+].assert.description  = "Validate that there is a display value attached to all SKS codes"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.4.12').display.count() = Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.4.12').count()" //Bør vi fjerne denne, da vi ikke skal teste display?
* test[=].action[=].assert.warningOnly  = true


RuleSet: assertConditionCodeExistsICPC2
* test[=].action[+].assert.description  = "Validate existance of ICPC-2 codes, including code, system, and if available, display value."
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.31').select(code | system | display).count() > 1"
* test[=].action[=].assert.warningOnly  = false


RuleSet: assertConditionCodeIncludeDisplayICPC2
* test[=].action[+].assert.description  = "Validate that there is a display value attached to all ICPC2 codes"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.31').display.count() = Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.31').count()" //Bør vi fjerne denne, da vi ikke skal teste display?
* test[=].action[=].assert.warningOnly  = true

RuleSet: assertDiagnosisStatusCurrent //Not used in Touchstone, replaced by assertDiagnosisStatusResolved
* test[=].action[+].assert.description  = "Validate the existance of category:status system = http://snomed.info/sct, code = 15240007 and display = current"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).category.coding.where(system = 'http://snomed.info/sct' and code = '15240007').exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertDiagnosisStatusResolved 
* test[=].action[+].assert.description  = "Validate the existance of category:status system = http://snomed.info/sct and code = 723506003"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).category.coding.where(system = 'http://snomed.info/sct' and code = '723506003').exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertDiagnosisTypeEncounterDiagnosis
* test[=].action[+].assert.description  = "Validate existance of category:type and that system = http://terminology.hl7.org/CodeSystem/condition-category and code = encounter-diagnosis"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/condition-category' and code = 'encounter-diagnosis' ).exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertOnsetDateExists
* test[=].action[+].assert.description  = "Validate existance of onsetDateTime"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).onset.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertAbatementDateExists
* test[=].action[+].assert.description  = "Validate existance of abatementDateTime"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).abatement.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertRecordedDateExists
* test[=].action[+].assert.description  = "Validate existance of recordedDate"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).recordedDate.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertClinicalStatusCodeResolved
* test[=].action[+].assert.description  = "Validate that the clinicalStatus code = resolved"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).clinicalStatus.coding.code = 'resolved'"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertClinicalStatusCodeSystem
* test[=].action[+].assert.description  = "Validate existance of clinicalStatus coding system exists"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).clinicalStatus.coding.system.exists()"
* test[=].action[=].assert.warningOnly  = true



////////////////////////////////// Asserts NOT for ConditionList ///////////////////////////

RuleSet: assertResponseCodeTest //Vurder om handlingen af testen er udført korrekt. 200 = okay, 201 = created.
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.responseCode = "200,201"
* test[=].action[=].assert.operator = #in
* test[=].action[=].assert.warningOnly = false

RuleSet: assertResponseCodeSetup //Vurder om handlingen af setup'et er udført korrekt. 200 = okay, 201 = created.
* setup[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* setup[=].action[=].assert.direction = #response
* setup[=].action[=].assert.responseCode = "200,201"
* setup[=].action[=].assert.operator = #in
* setup[=].action[=].assert.warningOnly = false

RuleSet: assertResponseNotFound //kan bruges til at bekræfte, at en meddelelse er slettet
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is not found."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.response = #notFound
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.warningOnly = false

RuleSet: assertValidateProfiles
* test[=].action[+].assert.description = "Validates the bundle against http://medcomfhir.dk/ig/hospitalnotification/ImplementationGuide/dk.fhir.ig.dk-medcom-hospitalnotification" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.validateProfileId = "hospitalnotification"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderid(messageHeaderid)
* test[=].action[+].assert.description = "Confirm that the previous MessageHeader fullURL is identical to Provenance.entity.what" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(entity.what.reference = '${{messageHeaderid}}').count() = 1"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPayload
* test[=].action[+].assert.description = "Confirm that the client request payload contains a Bundle resource type."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.resource = #Bundle
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderEventCoding
* test[=].action[+].assert.description = "Confirm that the request resource contains the expected eventCoding.code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).event.as(Coding).select(code = 'hospital-notification-message').allTrue()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceActivityCode(activityCode)
* test[=].action[+].assert.description = "Confirm that the request resource contains the expected activity code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(activity.coding.code = '{activityCode}').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertEncounterClass(encounterClass)
* test[=].action[+].assert.description = "Confirm that the Encounter class of the request resource is {encounterClass}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).class.code"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{encounterClass}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertOccurredTimeStamp(occurredDateTime)
* test[=].action[+].assert.description = "Confirm that the Provenance.occurredDateTime in the latest Provenance is after the previous"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference = %resource.entry[0].fullUrl).occurred > ${{occurredDateTime}}"
/* * test[=].action[=].assert.operator = #greaterThan
* test[=].action[=].assert.value = "{occurredDateTime}" */
* test[=].action[=].assert.warningOnly = false

RuleSet: assertEncounterStatus(encounterStatus)
* test[=].action[+].assert.description = "Confirm that the Encounter status of the request resource is {encounterStatus}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).status"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{encounterStatus}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderReportOfAdmission(reportOfAdmission)
* test[=].action[+].assert.description = "Confirm that the report of admission flag is {reportOfAdmission}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).extension.where(url='http://medcomfhir.dk/ig/hospitalnotification/StructureDefinition/medcom-messaging-reportOfAdmissionExtension').value"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{reportOfAdmission}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderReportOfAdmissionReceiver(reportOfAdmission)
* test[=].action[+].assert.description = "Confirm that the a receiver of the report of admission exists, when the flag is true, and doesn't exists when the flag is false."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).extension.where(url='http://medcomfhir.dk/ig/hospitalnotification/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').exists() = {reportOfAdmission}"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertProvenanceTarget
* test[=].action[+].assert.description = "Confirm that the target reference in Provenance equals MessageHeader.id"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference = %resource.entry[0].fullUrl).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceEntityCount(countProvenances)
* test[=].action[+].assert.description = "Confirm that the {countProvenances} Provenance instances exists."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).count()"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{countProvenances}"
* test[=].action[=].assert.warningOnly = false 

RuleSet: assertProvenanceEntityRole(role)
* test[=].action[+].assert.description = "Confirm that the role is set to {role}. Not used when testing the first message in a stream"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).entity.role"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{role}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPatientDeceased(deceased)
* test[=].action[+].assert.description = "Confirm that the patient.deceased is set to {deceased}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).deceased"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{deceased}"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertEpisodeOfCareID(episodeOfCareID)
* test[=].action[+].assert.description = "Confirm that the episodeOfCare-identifier is {episodeOfCareID}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).where(episodeOfCare.identifier.value = '${{episodeOfCareID}}').count() = 1"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertStructureEpisodeOfCareID
* test[=].action[+].assert.description = "Confirm that the episodeOfCare-identifier has the structure of an UUID"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).episodeOfCare.identifier.value.matches('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertSenderSOR(hospitalSOR)
* test[=].action[+].assert.description = "Confirm that the sender SOR number is different from the previous message."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.where(fullUrl = %resource.entry.resource[0].sender.reference).resource.identifier.where(system = 'urn:oid:1.2.208.176.1.1').value != ${{hospitalSOR}}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertSenderGLN(hospitalGLN)
* test[=].action[+].assert.description = "Confirm that the sender SOR number is different from the previous message."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.where(fullUrl = %resource.entry.resource[0].sender.reference).resource.identifier.where(system = 'https://www.gs1.org/gln').value != ${{hospitalGLN}}"
* test[=].action[=].assert.warningOnly = true

RuleSet: assertEncounterDateTime(encounterDateTime)
* test[=].action[+].assert.description = "Confirm that Encounter.period.start has been updated."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.start != ${{encounterDateTime}}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertEncounterStartTimeZone
* test[=].action[+].assert.description = "Confirm that the time zone is +01 or +02."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.start.where(substring(19,3) = '+01').exists() or Bundle.entry.resource.ofType(Encounter).period.start.where(substring(19,3) = '+02').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertEncounterEndTimeZone
* test[=].action[+].assert.description = "Confirm that the time zone is +01 or +02."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.end.where(substring(19,3) = '+01').exists() or Bundle.entry.resource.ofType(Encounter).period.end.where(substring(19,3) = '+02').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertCompareTimeZone(encounterTimeZone)
* test[=].action[+].assert.description = "Confirm that Encounter.period.start and Encounter.period.end has different timezones."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.end.(substring(19,3) = '${{encounterTimeZone}}').exists().not()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertEncounterLeapYear
* test[=].action[+].assert.description = "Confirm that Encounter.period.start is on the 29th of Febuary 2024."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.start.contains('2024-02-29')"
* test[=].action[=].assert.warningOnly = false

/* RuleSet: assertPatientIdentifier(patientID)
* test[=].action[+].assert.description = "Confirm that the patient.deceased is set to {deceased}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).identifier.value"
* test[=].action[=].assert.operator = #notFound
* test[=].action[=].assert.value = "{deceased}"
* test[=].action[=].assert.warningOnly = false */