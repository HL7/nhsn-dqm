Instance: measurereport-example-ach-subjectlist1
InstanceOf: DEQMSubjectListMeasureReport
Title: "MeasureReport - Example ACH Subject List 1"
Description: "Measure Report - Example ACH Subject List Example 1"
Usage: #example
// TODO, determine if this is actually necessary. DEQM Invariant deqm-3 seems to be incorrectly written
* extension.url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension.valueCodeableConcept = $measure-scoring#cohort "Cohort"
* status = #complete
* type = #subject-list
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulation|1.0.0)
* date = "2024-02-05T21:04:29.481+00:00"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2022-08-01T00:00:00+00:00"
* period.end = "2022-08-31T23:59:59+00:00"
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 3
* group.population.subjectResults = Reference(list-example-ach-individual-measurereport-list)
// * group.measureScore.value = 1




