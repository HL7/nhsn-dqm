Instance: measurereport-example-subjectlist1
InstanceOf: SubjectListMeasureReportProfile
Usage: #example
* status = #complete
* type = #subject-list
* measure = Canonical(NHSNdQMAcuteCareHospitalInitialPopulationMeasure)

* period.start = "2022-08-01T00:00:00+00:00"
* period.end = "2022-08-31T23:59:59+00:00"
* group.population.code = $measure-population#initial-population "Initial Population"
* group.population.count = 2
* group.population.subjectResults = Reference(Instance-for-measurereport-example-subjectlist1-1)


Instance: Instance-for-measurereport-example-subjectlist1-1
InstanceOf: IndividualMeasureReportList
Usage: #example
* status = #current
* mode = #snapshot
* entry[0].item = Reference(measurereport-example-individual-measurereport-sameresultdiffday)
* entry[+].item = Reference(MeasureReport/measurereport-example-individual-measurereport-hypo)