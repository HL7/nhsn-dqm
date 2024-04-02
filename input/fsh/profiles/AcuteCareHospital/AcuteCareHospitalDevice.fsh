Profile: AcuteCareHospitalDevice
Parent: Device
Id: ach-device
Title: "ACH Event Device"
Description: "This profile contains Required and Must Support data elements for reporting device information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile covers both implantable and other types of devices and is based on the [HL7 FHIR® R4 Device Resource v4.0.1](https://hl7.org/fhir/R4/device.html)."
* ^experimental = true
* ^status = #draft

* udiCarrier MS
  * deviceIdentifier MS
  * carrierAIDC MS
  * carrierHRF MS
  * entryType MS
* status MS
* distinctIdentifier MS
* manufactureDate MS
* expirationDate MS
* lotNumber MS
* serialNumber MS
* deviceName MS
* type 1..
* patient 1..