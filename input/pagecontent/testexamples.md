> Include this page if relevant. E.g:

The examples presented below are intended to be used in the test protocol for receiving HospitalNotification. Testprotocols can be found on the [GitHub pages for HospitalNotificaton](https://medcomdk.github.io/dk-medcom-hospitalnotification/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
All examples include, except TEK_LOV are based on the test patient:
* Name: Elmer
* CPR-nr.: 250947-9989
For the example TEK_LOV, the follwoing patient is used:
* Name: Kaje Test Hansen
* CPR-nr.: 210300-9996 

#### Test examples for receiving (STANDARDNAME)

[Download test examples for sending a (STANDARDNAME) (.zip)](./TestExamples/CareCommunication_Ex_send.zip)
<!-- I stifinder, kan man samle filerne i en zip-mappe, hvilket gør det lettere ved download. Eksemplerne ligger under input/resources. -->

|  Test example     |     Description     |
|---|---|
| [STIN_A](./Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html) | Notification with information that a citizen has been admitted to hospital (including request   for XDIS16)    |
| [STIN_B1](./Bundle-3c4c04ea-a622-4c6e-8e62-307a62d4c851.html)<br> [STIN_B2](./Bundle-64e7f154-668d-4d2a-bf76-2cec049b3252.html)    | Notification   with information that a citizen has been admitted to hospital X, region X   (including request for XDIS16) <br> Notification with   information that the same citizen has now been admitted to hospital Y, region   Y (does not include a request for XDIS16)    |

