Profile: CrossMeasurePatient
Parent: QICorePatient
Id: cross-measure-patient
Title: "Cross-Measure Patient Profile"
Description: "This profile contains NHSN-specific Required and Must-Support elements for reporting Patient information on public-health surveillance measures to NHSN (https://www.cdc.gov/nhsn/index.html)."
* extension[us-core-race] ^short = "US Core Race Extension (If present, must include at least one of the required codes. Preferably this would include at least a code in the ombCategory slice.)"
* extension[us-core-ethnicity] ^short = "US Core Race Extension (If present, must include at least one of the required codes. Preferably this would include at least a code in the ombCategory slice.)"
* identifier 1..
  * use MS
  * type MS
  * period MS
* name
  * use MS
  * text MS
  * prefix MS
  * suffix MS
  * period MS
* telecom
  * rank MS
  * period MS
* birthDate 1..
* deceased[x] MS
* address
  * use MS
  * type MS
  * text MS
  * district MS
  * country MS
* contact MS
  * relationship MS
  * name MS
  * address MS
  * period MS
* communication.preferred MS
* link MS