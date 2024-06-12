Profile: MyPatient
Parent: Patient
Id: MyPatient
* ^url: "http://example.org/StructureDefinition/MyPatient",
* identifier 1..1
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier.type.coding.code #MR (exactly)
* identifier.type.coding.display "Medical record number" (exactly)
* active 1..1
* name  1..1
* birthDate  1..1
* gender 1..1
* telecom 0..0
* address 0..0
