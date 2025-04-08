Instance: medication-example-metformin-1000
InstanceOf: QICoreMedication
Title: "Medication - Example Metformin 1000"
Description: "Medication - Example - Metformin hydrochloride 1000 MG"
Usage: #example

* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#860995 "metFORMIN hydrochloride 1000 MG"
* code.text = "Metformin hydrochloride 1000 MG"
* status = #active
* form = $sct#385060002 "Prolonged-release oral tablet (dose form)"
* form.text = "Extended-release tablet"