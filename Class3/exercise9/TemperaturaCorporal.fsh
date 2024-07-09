Profile: BodyTemperature
Parent: Observation
Id: BodyTemperature
* ^url = "https://hl7co.org/fhir/StructureDefinition/BodyTemperature"
* ^status = #draft
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* value[x].value 1..1
* value[x].comparator 0..0
* value[x].unit 1..1
* value[x].system 0..0
* value[x].code 0..0