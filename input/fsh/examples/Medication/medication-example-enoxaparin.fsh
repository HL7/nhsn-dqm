Instance: medication-example-enoxaparin
InstanceOf: QICoreMedication
Title: "Medication - Example Enoxaparin"
Description: "Medication - Example - Enoxaparin sodium, 0.4 ML,  100 MG/ML Prefilled Syringe"
Usage: #example

* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#854235 "0.4 ML enoxaparin sodium 100 MG/ML Prefilled Syringe"
* code.text = "Enoxaparin sodium, 0.4 ML,  100 MG/ML Prefilled Syringe"
* status = #active
