Profile: BodyTemperature
Parent: Observation
Id: BodyTemperature
* ^url = "https://example.org/fhir/StructureDefinition/BodyTemperature"
* ^status = #draft
* identifier 0..0
* basedOn 0..0
* partOf 0..0
* category 0..1
* category.coding 0..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.version 0..0
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs" (exactly)
* category.coding.userSelected 0..0
* category.text 0..0
* code.coding 1..2
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    SnomedCode 1..1 and
    LoincCode 0..1
* code.coding[SnomedCode].system 1..1
* code.coding[SnomedCode].system = "http://snomed.info/sct" (exactly)
* code.coding[SnomedCode].version 0..0
* code.coding[SnomedCode].code 1..1
* code.coding[SnomedCode].code = #386725007 (exactly)
* code.coding[SnomedCode].display 1..1
* code.coding[SnomedCode].display = "Body temperature (observable entity)" (exactly)
* code.coding[SnomedCode].userSelected 0..0
* code.coding[LoincCode].system = "http://loinc.org" (exactly)
* code.coding[LoincCode].version 0..0
* code.coding[LoincCode].code = #8310-5 (exactly)
* code.coding[LoincCode].display = "Body temperature" (exactly)
* code.coding[LoincCode].userSelected 0..0
* code.text = "Temperatura corporal" (exactly)
* subject 1..1
* subject.reference 1..1
* subject.type 0..0
* subject.identifier 0..0
* subject.display 0..0
* focus 0..0
* encounter 0..0
* effective[x] 1..1
* effective[x] only dateTime
* issued 0..0
* performer 1..1
* performer.reference 1..1
* performer.type 0..0
* performer.identifier 0..0
* performer.display 0..0
* value[x] 1..1
* value[x] only Quantity
* value[x].value 1..1
* value[x].comparator 0..0
* value[x].unit 1..1
* value[x].system 0..0
* value[x].code 0..0
* dataAbsentReason 0..0
* interpretation 0..1
* interpretation.coding 0..1
* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation" (exactly)
* interpretation.coding.version 0..0
* interpretation.coding.userSelected 0..0
* interpretation.text 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..1
* referenceRange.low.value = 36.5 (exactly)
* referenceRange.low.unit = "ºC" (exactly)
* referenceRange.low.system 0..0
* referenceRange.low.code 0..0
* referenceRange.high.unit = "ºC" (exactly)
* referenceRange.high.system 0..0
* referenceRange.high.code 0..0
* referenceRange.type 0..0
* referenceRange.appliesTo 0..0
* referenceRange.age 0..0
* referenceRange.text 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0