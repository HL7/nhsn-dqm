Profile: NHSNSubmittingOrganization
Parent: USCoreOrganizationProfile
Id: nhsn-submitting-organization
Title: "NHSN Submitting Organization"
Description: "This profile includes the name and identifier of the organization submitting the report Bundle and may include other information about the organization."
* ^status = #active
* ^date = "2023-05-15T19:23:44-07:00"
* ^jurisdiction = urn:iso:std:iso:3166#US
* identifier contains 
    nhsn_org_id 1..1 MS
* identifier[nhsn_org_id] ^short = "NHSN Org ID"
* identifier[nhsn_org_id] ^patternIdentifier.system = "https://www.cdc.gov/nhsn/OrgID"