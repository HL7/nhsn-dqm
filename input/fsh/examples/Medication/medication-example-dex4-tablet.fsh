Instance: medication-example-dex4-tablet
InstanceOf: QICoreMedication
Title: "Medication - Example Dex4 Tablet"
Description: "Medication - Example - Metformin hydrochloride 1000 MG"
Usage: #example

* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#860995 "metformin hydrochloride 1000 MG"
* code.text = "metformin hydrochloride 1000 MG"
* status = #active
// * form = $sct#66076007 "Chewable tablet"
// * form.text = "Chewable tablet"