
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
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.end.(substring(19,3) = '${{encounterTimeZone}}').exists().not"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertEncounterLeapYear
* test[=].action[+].assert.description = "Confirm that Encounter.period.start is on the 29th of Febuary 2024."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.start.contains('2024-02-29')"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertValidConditionList
* test[=].action[+].assert.description  = "Validate the bundle against medcomConditionList profile"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.validateProfileId = "MedComConditionListBundle"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertMoreThanOneCondition
* test[=].action[+].assert.description  = "Confirm more that one entry with resourceType 'Condition' in bundle"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).count() > 1"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertNoDuplicateCondition
* test[=].action[+].assert.description  = "Validates no duplicate conditions in conditionList"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).isDistinct()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertNoDuplicateConditionId
* test[=].action[+].assert.description  = "Validates that no two condition id's in the composition are the same "
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry[0].resource.section.entry.reference.isDistinct()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertDanishTimeZone
* test[=].action[+].assert.description  = "Validate that timezone is either  +01 or +02"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.timestamp.toString().substring(19,3) = '+01' or Bundle.timestamp.toString().substring(19,3) = '+02'"
* test[=].action[=].assert.warningOnly  = false

// select cluase draws out a list of all present dates of the relevant types, all typecast for effective comparisson.
RuleSet: assertUniqueBundleTimeStamp
* test[=].action[+].assert.description  = "Validate that bundle timestamp is not reused from other timestamps"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "(Bundle.entry.resource.ofType(Condition).select(recordedDate.toString() | onset.toString() | abatement.toString()) contains Bundle.timestamp.toString() ).not()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertConditionCodeExistsSKS // checks existance of SKS-d code
* test[=].action[+].assert.description = "Confirm that the SKS-D conditionCode exists"
* test[=].action[=].assert.direction = #request // request fordi der testes på det vi sender til serveren, ikke hvad vi modtager
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.4.12').select(code | system | display).count() > 1"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertConditionCodeExistsICPC2
* test[=].action[+].assert.description  = "Validate existance of ICPC-2 codes, including code, system, and if available, display value."
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.coding.where(system = 'urn:oid:1.2.208.176.2.31').select(code | system | display).count() > 1"
* test[=].action[=].assert.warningOnly  = false


RuleSet: assertDiagnosisStatusCurrent
* test[=].action[+].assert.description  = "Validates the existance of category:status and display = Current"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).category.coding.where(system =  'http://snomed.info/sct' and display = 'Current' and code = '15240007').exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertDiagnosisTypeEncounterDiagnosis
* test[=].action[+].assert.description  = "Validate existance of category:type and that code = encounter-diagnosis "
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).category.coding.where(system =  'http://terminology.hl7.org/CodeSystem/condition-category' and code = 'encounter-diagnosis' ).exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertOnsetDateExists
* test[=].action[+].assert.description  = "Validate existance of onset date"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).onset.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertAbatementDateExists
* test[=].action[+].assert.description  = "Validate existance of abatement date"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).abatement.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertRecordedDateExists
* test[=].action[+].assert.description  = "Validate existance of recorded date"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).recordedDate.exists()"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertClinicalStatusCodeResolved
* test[=].action[+].assert.description  = "Validate the clinicalStatus code = resolved"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).clinicalStatus.coding.code = 'resolved'"
* test[=].action[=].assert.warningOnly  = false

RuleSet: assertAtachedNoteNotIncluded
* test[=].action[+].assert.description  = "Validate that there is no Note attached to the condition"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).note.exists().not()"
* test[=].action[=].assert.warningOnly  = true
* test[=].action[=].assert.message      = 

RuleSet: assertCodeTextIncluded // 0..1 not required
* test[=].action[+].assert.description  = "Validate the inclusion of code text"
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = "Bundle.entry.resource.ofType(Condition).code.text.exists()"
* test[=].action[=].assert.warningOnly  = true

/*

RuleSet: 
* test[=].action[+].assert.description  = ""
* test[=].action[=].assert.direction    = #request
* test[=].action[=].assert.expression   = ""
* test[=].action[=].assert.warningOnly  = false
*/




