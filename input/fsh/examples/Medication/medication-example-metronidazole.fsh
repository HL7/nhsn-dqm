Instance: medication-example-metronidazole
InstanceOf: QICoreMedication
Title: "Medication - Example Metronidazole"
Description: "Medication - Example - Metronidazole 500 MG"
Usage: #example
* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#317428 "metroNIDAZOLE 500 MG"
* code.text = "Metronidazole 500 MG"
* status = #active
* form = $sct#421026006 "Oral tablet"
* form.text = "Oral tablet"
