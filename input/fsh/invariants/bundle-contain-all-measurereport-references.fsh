
/*
Invariant: bundle-contain-all-measurereport-references
Description: "MeasureReport Bundle: must contain all Resources that are references by MeasureReport references"
Severity: #error
Expression: "Bundle.entry.resource.where($this.is(MeasureReport)).descendants().reference.where($this.startsWith('#').not()).all((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')))"
*/

Invariant: bundle-contain-all-references
Description: "All referenced resources SHALL be contained within the Bundle."
Expression: "Bundle.entry.resource.descendants().reference.where($this.startsWith('#').not()).all((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')))"
Severity: #error

/*
If this fails, use the following FHIRPath expression to discover missing resources: 
Bundle.entry.resource.descendants().reference.where($this.startsWith('#').not()).where((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')).not())"
*/