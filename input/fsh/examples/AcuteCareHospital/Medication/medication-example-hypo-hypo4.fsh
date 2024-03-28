Instance: medication-example-hypo-hypo4
InstanceOf: AcuteCareHospitalReportingMedication
Usage: #example
* code.coding[0] = $atc#B05BA03
* code.coding[+] = $rxnorm#727517
* code.text = "dextrose 50% in water injection syringe"
* status = #active
* form = $sct#385219001 "Solution for injection"
* form.text = "Injection solution"
* ingredient.itemCodeableConcept.coding[0] = $atc#B05BA03
* ingredient.itemCodeableConcept.coding[+] = $rxnorm#727517
* ingredient.itemCodeableConcept.text = "dextrose 50% in water injection syringe"
* ingredient.strength.numerator = 50 '%'
* ingredient.strength.denominator = 50 '%'