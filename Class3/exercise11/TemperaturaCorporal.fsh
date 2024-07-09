Profile: BodyTemperature
Parent: Observation
Id: BodyTemperature
* ^url = "https://hl7co.org/fhir/StructureDefinition/BodyTemperature"
* ^status = #draft
/* El siguiente es el patrón para hacer un Slicing,
con el fin de dividir el elemento repetitivo (coding) en dos (2) sub elementos con restricciones específicas, 
para utilizar el sistema de códificación SNOMED-CT y el código equivalente en el sistema de codificación LOINC. */
* code.coding 1..2
/* En este caso el discriminador de Slicing (StructureDefinition.differential.element.slicing.discriminator) 
es el valor (value) asociado al elemento "System".*/
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
/* A continuación se especifica la restricción que determina el nombre de los dos (2) Slices
SnomedCode (cuya cardinalidad es 1..1)
y LoincCode (cuya cardinalidad es 0..1)*/
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
/* +++ INSERTE A CONTINUACIÓN LAS REGLAS PARA EL SLICE [LoincCode] +++ */
* code.coding[LoincCode].system 0..1
* code.coding[LoincCode].system = "http://loinc.org" (exactly)
* code.coding[LoincCode].version 0..0
* code.coding[LoincCode].code 1..1
* code.coding[LoincCode].code = #8310-5 (exactly)
* code.coding[LoincCode].display 1..1
* code.coding[LoincCode].display = "Body temperature" (exactly)
* code.coding[LoincCode].userSelected 0..0