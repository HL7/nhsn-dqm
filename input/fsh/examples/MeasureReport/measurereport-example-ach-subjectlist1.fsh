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
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulation)
* date = "2024-02-05T21:04:29.481+00:00"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2022-08-01T00:00:00+00:00"
* period.end = "2022-08-31T23:59:59+00:00"
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 2
* group.population.subjectResults = Reference(list-example-ach-individual-measurereport-list)
* group.measureScore.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.measureScore.extension.valueCode = #unknown

Instance: list-example-ach-individual-measurereport-list
InstanceOf: DEQMIndividualMeasureReportList
Title: "List - Example ACH Individual Measure Report List"
Description: "List - Example ACH Individual Measure Report List Example"
Usage: #example
//* id = "list-example-individual-measurereport-list"
* status = #current
* mode = #snapshot
//* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass1)
//* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass2)
//* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass3)
* entry[+].item
  * identifier.system = "http://example.org/fhir/measurereport/id"
  * identifier.value = "123456789-pass1"
* entry[+].item
  * identifier.system = "http://example.org/fhir/measurereport/id"
  * identifier.value = "123456789-pass2"
* entry[+].item
  * identifier.system = "http://example.org/fhir/measurereport/id"
  * identifier.value = "123456789-pass3"
