Instance: measurereport-example-individual-ach-ach-pass3
InstanceOf: MeasureReport
Title: "MeasureReport - Example Individual ACH Pass3 - C. diff"
Description: "MeasureReport - Example Individual ACH Pass3 - Healthcare facility-onset, antibiotic-treated Clostridioides difficile infection / Hospital-onset bacteremia and fungemia (CDI/HOB)"
Usage: #example
// TODO, determine if this is actually necessary. DEQM Invariant deqm-3 seems to be incorrectly written
* extension.url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension.valueCodeableConcept = $measure-scoring#cohort "Cohort"
* meta.profile = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/indv-measurereport-deqm"
* identifier[+].system = "http://example.org/fhir/measurereport/id"
* identifier[=].value = "123456789-pass3"
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
* evaluatedResource[0] = Reference(condition-example-diagnosis-ach-pass3-problem)
* evaluatedResource[0] = Reference(condition-example-diagnosis-ach-pass3)
* evaluatedResource[0] = Reference(coverage-example-ach-pass3)
* evaluatedResource[0] = Reference(device-example-ach-ach-pass3-ivcs-pump)
* evaluatedResource[0] = Reference(encounter-example-ach-ach-pass3-acute)
* evaluatedResource[0] = Reference(encounter-example-ach-ach-pass3-short-stay)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass3-enoxaparin)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass3-metronidazole-1)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass3-metronidazole-2)
* evaluatedResource[0] = Reference(medicationadministration-example-ach-pass3-metronidazole-3)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass3-cipro)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass3-enoxaparin)
* evaluatedResource[0] = Reference(medicationrequest-example-ach-pass3-metronidazole)
* evaluatedResource[0] = Reference(observation-example-ach-pass3-cdiff)
* evaluatedResource[0] = Reference(observation-example-ach-pass3-vitals-height)
* evaluatedResource[0] = Reference(observation-example-ach-pass3-vitals-weight)
* evaluatedResource[0] = Reference(patient-example-ach-ach-pass3)
* evaluatedResource[0] = Reference(procedure-example-ach-ach-pass3-transfusion)
* evaluatedResource[0] = Reference(servicerequest-example-ach-ach-pass3-cdiff)
* evaluatedResource[0] = Reference(specimen-example-ach-ach-pass3-stool)


