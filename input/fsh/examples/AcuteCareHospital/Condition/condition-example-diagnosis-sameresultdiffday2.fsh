Instance: condition-example-diagnosis-sameresultdiffday2
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Usage: #example
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Encounter Diagnosis"
* code.coding[0] = $sct#28876000 "Disease condition determination, uncontrolled (finding)"
* code.coding[+] = $icd-9-cm#790.29 "Uncontrolled blood glucose"
* code.text = "Uncontrolled blood glucose"
* subject = Reference(patient-example-sameresultdiffday)
//* subject.display = "Hypo, Sameresultdiffday"
* encounter = Reference(encounter-example-hypo-sameresultdiffday)
//* encounter.display = "Hospital Encounter"