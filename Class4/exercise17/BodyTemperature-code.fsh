Alias: $snomed-observation = http://hl7.org/fhir/ValueSet/observation-codes-snomed // Alias de SNOMED
Alias: $loinc-observation = http://hl7.org/fhir/ValueSet/observation-codes-loinc // Alias de LOINC


Profile: BodyTemperature
Parent: Observation
Id: BodyTemperature
* ^url = "https://example.org/fhir/StructureDefinition/BodyTemperature"
* ^status = #draft
...
* code.coding 1..2
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    SnomedCode 1..1 and
    LoincCode 0..1
// En la siguiente línea se asigna o vincula (binding) con el ValueSet de laa terminología SNOMED para el primer Slice.
* code.coding[SnomedCode] from $snomed-observation (required)
* code.coding[SnomedCode].system 1..1
* code.coding[SnomedCode].system = "http://snomed.info/sct" (exactly)
* code.coding[SnomedCode].version 0..0
* code.coding[SnomedCode].code 1..1
* code.coding[SnomedCode].code = #386725007 (exactly)
* code.coding[SnomedCode].display 1..1
* code.coding[SnomedCode].display = "Body temperature (observable entity)" (exactly)
* code.coding[SnomedCode].userSelected 0..0
// En la siguiente línea se asigna o vincula (binding) con el ValueSet de la terminología LOINC para el segundo Slice.
* code.coding[SnomedCode] from $loinc-observation (required)
* code.coding[LoincCode].system = "http://loinc.org" (exactly)
* code.coding[LoincCode].version 0..0
* code.coding[LoincCode].code = #8310-5 (exactly)
* code.coding[LoincCode].display = "Body temperature" (exactly)
* code.coding[LoincCode].userSelected 0..0
* code.text = "Temperatura corporal" (exactly)
...