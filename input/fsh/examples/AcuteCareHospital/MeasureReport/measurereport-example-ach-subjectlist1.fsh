Instance: measurereport-example-ach-subjectlist1
InstanceOf: SubjectListMeasureReportProfile
Usage: #example

* status = #complete
* type = #subject-list
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulationMeasure)
* period.start = "2022-08-01T00:00:00+00:00"
* period.end = "2022-08-31T23:59:59+00:00"
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 2
* group.population.subjectResults = Reference(list-example-ach-individual-measurereport-list)


Instance: list-example-ach-individual-measurereport-list
InstanceOf: IndividualMeasureReportList
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
