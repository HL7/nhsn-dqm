Profile: AcuteCareHospitalDevice
Parent: QICoreDevice
Id: ach-device
Title: "ACH Event Device"
Description: "This profile contains Required and Must Support data elements for reporting device information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
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