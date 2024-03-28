Instance: medication-example-hypo-sameresultdiffday1
InstanceOf: AcuteCareHospitalReportingMedication
Usage: #example
* code.coding[0] = $atc#C10AA05
* code.coding[+] = $rxnorm#83366
* code.coding[+] = $rxnorm#83367
* code.coding[+] = $rxnorm#153165
* code.coding[+] = $rxnorm#617312
* code.coding[+] = $rxnorm#617314
* code.text = "atorvastatin (LIPITOR) tablet"
* status = #active
* form = $sct#385055001 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept.coding[0] = $atc#C10AA05
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#83366
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#83367
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#153165
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#617312
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#617314
* ingredient.itemCodeableConcept.text = "atorvastatin (LIPITOR) tablet"
* ingredient.strength.numerator = 10 'mg' "mg"
* ingredient.strength.denominator = 10 'mg' "mg"