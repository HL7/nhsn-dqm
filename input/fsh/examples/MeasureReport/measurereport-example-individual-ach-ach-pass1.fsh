Instance: measurereport-example-individual-ach-ach-pass1
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Example Individual ACH Pass1 - LOS/MEN"
Description: "MeasureReport - Example Individual ACH Pass1 - Late Onset Sepsis and Meningitis (LOS/MEN)"
Usage: #example
// TODO, determine if this is actually necessary. DEQM Invariant deqm-3 seems to be incorrectly written
* extension.url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension.valueCodeableConcept = $measure-scoring#cohort "Cohort"
* identifier[+].system = "http://example.org/fhir/measurereport/id"
* identifier[=].value = "123456789-pass1"
* status = #complete
* type = #individual
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulation|0.1.0-cibuild)
* subject = Reference(patient-example-ach-ach-pass1)
* date = "2024-02-05T21:04:29.481+00:00"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2024-01-05T00:00:00.000+00:00"
* period.end = "2024-02-04T00:00:00.000+00:00"
* improvementNotation = $measure-improvement-notation#increase
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 1
* evaluatedResource[0] = Reference(patient-example-ach-ach-pass1)
* evaluatedResource[0] = Reference(encounter-example-ach-ach-pass1)
* evaluatedResource[0] = Reference(coverage-example-ach-pass1)
* evaluatedResource[0] = Reference(condition-example-diagnosis-ach-pass1)
* evaluatedResource[0] = Reference(device-example-ach-ach-pass1-central-line)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass1-vancomycin)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass1-vancomycin)
* evaluatedResource[0] = Reference(observation-example-ach-pass1-blood)
* evaluatedResource[0] = Reference(observation-example-ach-pass1-csf)
* evaluatedResource[0] = Reference(observation-example-ach-pass1-gestational-age)
* evaluatedResource[0] = Reference(observation-example-ach-pass1-vitals-weight)
* evaluatedResource[0] = Reference(procedure-example-ach-ach-pass1-central-line)
* evaluatedResource[0] = Reference(procedure-example-ach-ach-pass1-lumbar)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass1-blood)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass1-csf)
* evaluatedResource[0] = Reference(specimen-example-ach-ach-pass1-blood)
* evaluatedResource[0] = Reference(specimen-example-ach-ach-pass1-csf)
