Profile: NHSNMeasureBundle
Parent: Bundle
Id: nhsn-measure-bundle
Title: "NHSN Measure Bundle"
Description: "This profile defines a Bundle provided by the MeasureServer containing a Measure resource and all related resources (ValueSet, Library, etc.)."
* obeys bundle-no-modifier-extensions and bundle-contain-all-references
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
* entry contains
    measure 1..1 
* entry[measure] ^short = "The Measure resource"
  * resource 1..
  * resource only CRMIShareableMeasure
  * ^short = "Bundle entry for the Measure resource"