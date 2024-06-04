Instance: measurereport-example-individual-ach-ach-pass2
InstanceOf: MeasureReport
Title: "MeasureReport - Example Individual ACH Pass2 - Hypo"
Description: "MeasureReport - Example Individual ACH Pass2 - Hypoglycemia"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/indv-measurereport-deqm"
* identifier[+].system = "http://example.org/fhir/measurereport/id"
* identifier[=].value = "123456789-pass2"
* status = #complete
* type = #individual
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulation)
* subject = Reference(patient-example-ach-ach-pass1)
* date = "2024-02-05T21:04:29.481+00:00"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2024-01-05T00:00:00.000+00:00"
* period.end = "2024-02-04T00:00:00.000+00:00"
* improvementNotation = $measure-improvement-notation#increase
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 1
* evaluatedResource[0] = Reference(patient-example-ach-ach-pass2)
* evaluatedResource[0] = Reference(encounter-example-ach-ach-pass2-emergency)
* evaluatedResource[0] = Reference(encounter-example-ach-ach-pass2-inpatient)
* evaluatedResource[0] = Reference(coverage-example-ach-pass2)
* evaluatedResource[0] = Reference(condition-example-diagnosis-ach-pass2-problem)
* evaluatedResource[0] = Reference(condition-example-diagnosis-ach-pass2)
* evaluatedResource[0] = Reference(device-example-ach-ach-pass2-compress-hose)
* evaluatedResource[0] = Reference(diagnosticreport-example-ach-ach-pass2-radiology)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-dex4)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-heparin-1)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-heparin-2)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-insulin-lispro-1)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-insulin-lispro-2)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-insulin-lispro-3)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass2-insulin-lispro-4)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass2-dex4-tablet)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass2-heparin)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass2-insulin-lispro)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass2-metformin)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-aptt)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-poc-1)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-poc-2)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-hemo-a1c)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-hemo)
* evaluatedResource[0] = Reference(observation-example-ach-pass2-vitals-weight)
* evaluatedResource[0] = Reference(procedure-example-ach-ach-pass2-ivcf)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass2-aptt)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass2-glucose)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass2-hemo-a1c)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass2-hemo)
* evaluatedResource[0] = Reference(specimen-example-ach-ach-pass2-blood-1)
* evaluatedResource[0] = Reference(specimen-example-ach-ach-pass2-blood-2)

