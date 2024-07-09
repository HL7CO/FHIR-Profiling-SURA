Profile: MyPatientProfile
Parent: Patient
Id: MyPatientProfile
* ^url = "https://example.org/fhir/StructureDefinition/MyPatientProfile"
* ^status = #draft
* ^contact.telecom.system = #phone
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains FavoriteRamoneExtension named PatientFavoriteRamone 0..1
* extension[PatientFavoriteRamone] ^isModifier = false
* identifier 1..1 MS
* identifier.use ..0
* identifier.type 1..
* identifier.type.coding.system 1..
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier.type.coding.system ^label = "Terminología"
* identifier.type.coding.version ..0
* identifier.type.coding.code 1..
* identifier.type.coding.code = #MR (exactly)
* identifier.type.coding.code ^label = "Código"
* identifier.type.coding.code ^definition = "[en: A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination)]\r\n[es: Un símbolo en sintaxis definida por el sistema ......]"
* identifier.type.coding.display 1..
* identifier.type.coding.display = "Medical record number" (exactly)
* identifier.type.coding.display ^label = "Concepto"
* identifier.type.coding.userSelected ..0
* identifier.type.text ..0
* identifier.system ..0
* identifier.value 1..
* identifier.period ..0
* identifier.assigner ..0
* active 1..
* name 1..1
* name.use ..0
* name.text ..0
* name.family 1..
* name.given 1..
* name.prefix ..0
* name.suffix ..0
* name.period ..0
* telecom ..0
* gender 1..
* birthDate 1..
* deceased[x] ..0
* address ..0
* maritalStatus ..0
* maritalStatus ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.\r\n\r\n[es: Texto en español]"
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization ..0
* link ..0