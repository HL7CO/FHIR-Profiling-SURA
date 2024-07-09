Instance: cf80983e-199b-4e80-a363-13198a8573e7
InstanceOf: Observation
Usage: #example
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $sct#386725007 "Body temperature (observable entity)"
* code.coding[+] = $loinc#8310-5 "Body temperature"
* code.text = "Temperatura corporal"
* subject = Reference(Patient/54ac308f-5964-4298-8f7c-93538db8a1f4)
* effectiveDateTime = "2023-06-16T16:30:23-03:00"
* performer = Reference(Practitioner/92d1c33d-169c-43dc-9fec-aad3f3ef3e26)
* valueQuantity.value = 37
* valueQuantity.unit = "ºC"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low.value = 36.5
* referenceRange.low.unit = "ºC"
* referenceRange.high.value = 37.3
* referenceRange.high.unit = "ºC"