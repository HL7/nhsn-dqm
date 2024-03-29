Instance: condition-example-diagnosis-hypo1
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Usage: #example
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Encounter Diagnosis"
* code.coding[0] = $sct#80394007 "Hyperglycemia (disorder)"
* code.coding[+] = $icd-9-cm#790.29 "Hyperglycemia"
* code.text = "Hyperglycemia"
* subject = Reference(patient-example-hypo)
//* subject.display = "Hypo, Edadd"
* encounter.display = "Hospital Encounter"