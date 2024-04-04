Profile: HypoglycemicReportMedicationRequest
Parent: USCoreMedicationRequestProfile
Id: hypoglycemic-reporting-medicationrequest
Title: "Hypoglycemic Event MedicationRequest"
Description: "This profile contains Required and Must Support data elements for reporting medication request (order) information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* category MS
* doNotPerform MS
* reasonCode MS
* instantiatesCanonical MS
* instantiatesUri MS
* courseOfTherapyType MS
* dosageInstruction
  * timing MS
  * asNeeded[x] MS
  * site MS
  * route MS
  * method MS
  * doseAndRate MS
    * type MS
    * dose[x] MS