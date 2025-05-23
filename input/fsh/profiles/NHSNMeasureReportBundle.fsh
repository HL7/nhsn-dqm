Profile: NHSNMeasureReportBundle
Parent: Bundle
Id: nhsn-measurereport-bundle
Title: "NHSN MeasureReport Bundle"
Description: "This profile defines a valid Submission Bundle to NHSN with all resources contained within. The Bundle is comprised of entry slices representing the data source Organization, a POI List, one Subject List MeasureReport per reportable measure, an Individual MeasureReport List, individual MeasureReports, and the underlying patient-centric clinical information.

All resources referenced in the Bundle SHALL be present, per invariant bundle-contain-all-references. If an instance fails to validate against that invariant, the following FHIRPath statement can be used to locate the missing reference(s): 

Bundle.entry.resource.descendants().reference.where($this.startsWith('#').not()).where((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')).not())
"

* obeys bundle-no-modifier-extensions and bundle-contain-all-references
* . ^short = "A Bundle contains a collection of Resources"
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
  //* ^constraint.expression.fhir_comments = "<expression value=\"(select(modifierExtension) | descendants().select(modifierExtension)).exists().not()\"/>"

// FHIR-48278
* type = #collection (exactly)
* entry 1..*
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"                  
* entry ^slicing.rules = #open
* entry contains
    submitting-organization 1..1 MS and
    submitting-device 0..1 MS and
    poi-list 0..1 MS and
    subjectlist-measurereport 0..* MS and
    individual-measurereport-list 0..* MS and
    individual-measurereport 0..* MS and
    patient 0..* MS
* entry.fullUrl 1.. MS
* entry.resource 1.. MS
* entry[submitting-organization] ^short = "The Submitting Organization: the organization that is the source of the data"
* entry[submitting-organization].resource 1.. MS
* entry[submitting-organization].resource only NHSNSubmittingOrganization
* entry[submitting-organization].resource ^short = "Bundle entry for submitting organization"
* entry[submitting-device] ^short = "The Submitting Device: the device or software that is submitting the data"
* entry[submitting-device].resource 1.. MS
* entry[submitting-device].resource only NHSNSubmittingDevice
* entry[submitting-device].resource ^short = "Bundle entry for submitting device"
* entry[poi-list] ^short = "The Patients of Interest List: a List containing Patient FHIR IDs that may be included in the Initial Population across all measures"
* entry[poi-list].resource 1.. MS
* entry[poi-list].resource only PatientsOfInterestList
* entry[subjectlist-measurereport] ^short = "Subject List MeasureReport: For each measure, there is one Summary MeasureReport. The Summary MeasureReport includes the population count and a link to the List of Individual MeasureReports that are included in the summary"
* entry[subjectlist-measurereport].resource 1.. MS
* entry[subjectlist-measurereport].resource only DEQMSubjectListMeasureReport
* entry[individual-measurereport-list] ^short = "Individual MeasureReport List: Each Summary MeasureReport references a list of Individual MeasureReports that are included in the summary"
* entry[individual-measurereport-list].resource 1.. MS
* entry[individual-measurereport-list].resource only DEQMIndividualMeasureReportList
* entry[individual-measurereport] ^short = "Individual Measure Report: each Individual MeasureReport refers to one Patient and one measure included in the Individual Measure Report List"
* entry[individual-measurereport].resource 1.. MS
* entry[individual-measurereport].resource only DEQMIndividualMeasureReportProfile
* entry[patient] ^short = "The Patients associated with an Individual MeasureReport"
* entry[patient].resource 1.. MS
* entry[patient].resource only QICorePatient