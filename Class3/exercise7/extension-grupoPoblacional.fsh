Extension: GrupoPoblacional
Id: GrupoPoblacional
* ^url = "http://hl7.org.co/fhir/StructureDefinition/GrupoPoblacional"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1
* value[x] only coding
* valueCoding from http://hl7.org.co/fhir/ValueSet/ListaGruposPoblacionales
* valueCoding.system 1..1
* valueCoding.system = "http://hl7.org.co/fhir/CodeSystem/ListaGruposPoblacionales" (exactly)
* valueCoding.code 1..1
* valueCoding.display 0..1