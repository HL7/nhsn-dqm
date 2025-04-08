Instance: medication-example-heparin
InstanceOf: QICoreMedication
Title: "Medication - Example Heparin"
Description: "Medication - Example - Heparin sodium, 0.5 ML, porcine 10000 UNT/ML Prefilled Syringe"
Usage: #example

* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#2121591 "0.5 ML heparin sodium, porcine 10000 UNT/ML Prefilled Syringe"
* code.text = "0.5 ML heparin sodium, porcine 10000 UNT/ML Prefilled Syringe"
* status = #active
* form = $sct#779438003 "Product containing only heparin in parenteral dose form (medicinal product form)"
* form.text = "Intravenous solution"


