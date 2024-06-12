Profile: MyPatientProfile
Parent: Patient
Id: MyPatientProfile
* ^url = "https://example.org/fhir/StructureDefinition/MyPatientProfile"
* ^status = #draft
* ^contact.telecom.system = #phone
* identifier 1..1
* identifier.use 0..0
* identifier.type 1..1
* identifier.type.coding.system 1..1
* identifier.type.coding.version 0..0
* identifier.type.coding.code 1..1
* identifier.type.coding.display 1..1
* identifier.type.coding.userSelected 0..0
* identifier.type.text 0..0
* identifier.system 0..0
* identifier.value 1..1
* identifier.period 0..0
* identifier.assigner 0..0
* active 1..
* name 1..1
* name.use 0..0
* name.text 0..0
* name.family 1..1
* name.given 1..*
* name.prefix 0..0
* name.suffix 0..0
* name.period 0..0
* telecom 0..0
* gender 1..1
* birthDate 1..1
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0