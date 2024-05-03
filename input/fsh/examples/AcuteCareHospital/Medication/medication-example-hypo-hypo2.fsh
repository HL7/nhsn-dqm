Instance: medication-example-hypo-hypo2
InstanceOf: AcuteCareHospitalReportingMedication
Title: "Medication - Example Hypo Hypo2"
Description: "Medication - Example Hypo Hypo2"
Usage: #example
* code.coding[0] = $atc#A10AB04
* code.coding[+] = $rxnorm#86009
* code.coding[+] = $rxnorm#242120
* code.text = "insulin lispro (HumaLOG) correction scale injection"
* status = #active
* form = $sct#385219001 "Solution for injection"
* form.text = "Injection solution"
* ingredient.itemCodeableConcept.coding[0] = $atc#A10AB04
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#86009
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#242120
* ingredient.itemCodeableConcept.text = "insulin lispro (HumaLOG) correction scale injection"
* ingredient.strength.numerator.value = 100
* ingredient.strength.numerator.unit = "unit/mL"
* ingredient.strength.denominator.value = 100
* ingredient.strength.denominator.unit = "unit/mL"