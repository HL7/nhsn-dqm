Profile: AcuteCareHospitalReportingServiceRequest
Parent: ServiceRequest
Id: ach-servicerequest
Title: "ACH Event ServiceRequest"
Description: "This profile contains Required and Must Support data elements for reporting order information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft

* category MS
* priority MS
* doNotPerform MS
* code MS
//  * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
//  * ^binding.extension.valueString = "ServiceRequestCode"
//  * ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service."
* encounter MS
* occurrence[x] MS
* asNeeded[x] MS
* authoredOn 1..
* reasonReference MS
* specimen MS

// TODO 10/2/2023 - Corey - Create an invariant requring that either category exists or code exists.