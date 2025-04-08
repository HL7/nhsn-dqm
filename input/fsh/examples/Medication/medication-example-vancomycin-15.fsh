Instance: medication-example-vancomycin-15
InstanceOf: QICoreMedication
Title: "Medication - Example Vancomycin 15"
Description: "Medication - Example - Vancomycin Injectable Solution"
Usage: #example

* meta.profile = Canonical(QICoreMedication|6.0.0)
* code.coding[+] = $rxnorm#375983 "vancomycin Injectable Solution"
* code.text = "Vancomycin Injectable Solution"
* status = #active
* form = $sct#385219001 "Solution for injection"
* form.text = "Injection solution"