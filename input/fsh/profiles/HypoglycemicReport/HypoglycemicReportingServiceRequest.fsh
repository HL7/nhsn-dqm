Profile: HypoglycemicReportingServiceRequest
Parent: ServiceRequest
Id: hypoglycemic-reporting-servicerequest
Title: "Hypoglycemic Event ServiceRequest"
Description: "This profile contains Required and Must Support data elements for reporting blood glucose order information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* category MS
* priority MS
* doNotPerform MS
* code MS
* code from $procedure-code (example)
  * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
  * ^binding.extension.valueString = "ServiceRequestCode"
  * ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service."
* encounter MS
* occurrence[x] MS
* asNeeded[x] MS
* authoredOn 1..
* reasonReference MS
* specimen MS