The examples presented below are intended to be used in the test protocol for receiving ConditionList. Test protocols can be found on the [GitHub-pages for ConditionList](https://medcomdk.github.io/dk-medcom-conditionlist/#2-test-and-certification). 


#### Test patient/citizens
All examples included are based on the test patient:
* Name: Elmer Test Hansen
* CPR-no.: 2509479989

#### Test examples for receiving a ConditionList

[Download test examples for receiving a ConditionList (.zip)](./TestExamples/ConditionList_Ex_receive.zip)
<!-- I stifinder, kan man samle filerne i en zip-mappe, hvilket gør det lettere ved download. Eksemplerne ligger under input/resources. -->

<!-- RET TABEL MED ConditionList EKSEMPLER -->
|  Test example     |     Description     | 
|---|---|
| [CareCommunication_Ex_receive_A-new](./Bundle-b10f940e-2000-4ec8-9e0b-a3fb60fc5bb5.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, the category 'other', attachment and associated structured author information. | 
| [CareCommunication_Ex_receive_B-reply](./Bundle-91b4b79a-520f-48cb-bb9a-9c3e27301968.html) | A reply message. The reply contains an attachment. | 
| [CareCommunication_Ex_receive_C-forward](./Bundle-8352b67a-23b2-44c5-b43a-725270a90722.html) | A forwarded message | 
| [CareCommunication_Ex_receive_Tek-A_new_priority](./Bundle-0c8dddf2-c882-4b00-8870-5035279e7d01.html) | A new CareCommunication. Including priority, escape signs and line breaks in the message text. | 
| [CareCommunication_Ex_receive_Tek-B_new_attachment](./Bundle-ee22cec7-aad7-4bfe-ab1b-5ada3f59e676.html) | A new CareCommunication. Including one of each type of attachment. | 
| [CareCommunication_Ex_receive_Tek-C-new_zulutime](./Bundle-6e5d7a74-a88a-47a3-8362-20396e9db332.html) | A new CareCommunication. The timezone is zulutime. | 
| [CareCommunication_Ex_receive_Tek-D_new_timezone](./Bundle-82875f08-4b9e-4a23-b81a-e23ec1251334.html) | A new CareCommunication. A timezone is included. | 
