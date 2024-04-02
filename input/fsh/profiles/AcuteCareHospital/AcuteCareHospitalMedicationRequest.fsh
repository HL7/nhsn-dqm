Profile: AcuteCareHospitalReportingMedicationRequest
Parent: USCoreMedicationRequestProfile
Id: ach-medicationrequest
Title: "ACH Event MedicationRequest"
Description: "This profile contains Required and Must Support data elements for reporting medication request (order) information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile is based on the [HL7 FHIR® US Core MedicationRequest Profile v3.1.1](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-medicationrequest.html)."
* ^experimental = true
* ^status = #draft

* statusReason MS
* category MS
* priority MS
* doNotPerform MS
* reasonCode MS
* instantiatesCanonical MS
* instantiatesUri MS
* courseOfTherapyType MS
* dosageInstruction
  * text MS
  * timing MS
  * asNeeded[x] MS
  * site MS
  * route 1..
  * method MS
  * doseAndRate MS
    * type MS
    * dose[x] MS
    * rate[x] MS