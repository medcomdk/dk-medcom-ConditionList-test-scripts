//Get RE-STIN
Alias: FHIRSandbox_path = /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-STIN.xml
Instance: HospitalNotification_TestScript_receive-RE-STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-stin"
* description = "Receive: Update Start hospital stay"
* title = "Receive: Update Start hospital stay - RE_STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-stin" 
* name = "HospitalNotificationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, FHIRSandbox_path, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, FHIRSandbox_path, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN)

