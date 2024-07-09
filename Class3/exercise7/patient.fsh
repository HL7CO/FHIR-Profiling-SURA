Profile: MyPatient
Parent: Patient
Id: MyPatient
* ^url = "http://hl7.org.co/fhir/StructureDefinition/MyPatient"
* identifier 1..3
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Discriminador para tipos de identificaciones"
* identifier ^slicing.ordered = true
* identifier include
    PersonalNumber 1..1 and
    DriverLicence 0..1 and
    Passport 0..1
/*Reglas para el slice de número personal*/
* identifier[PersonalNumber].type.coding.system 1..1
* identifier[PersonalNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[PersonalNumber].type.coding.code 1..1
* identifier[PersonalNumber].type.coding.code = "PN" (exactly)
* identifier[PersonalNumber].type.coding.display 0..1
/*Reglas para el slice de licencia de conducción*/
* identifier[DriverLicence].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[DriverLicence].type.coding.code 1..1
* identifier[DriverLicence].type.coding.code = "DL" (exactly)
* identifier[DriverLicence].type.coding.display 0..1
* identifier[DriverLicence].value 1..1
* identifier[DriverLicence].period.start 1..1
* identifier[DriverLicence].period.end 1..1
/* Reglas para el slice de pasaporte*/
* identifier[Passport].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Passport].type.coding.code 1..1
* identifier[Passport].type.coding.code = "PPN" (exactly)
* identifier[Passport].type.coding.display 0..1
