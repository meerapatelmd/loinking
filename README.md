$lookup
Returns information about a specific resource, such as a concept (e.g., LOINC term or Part), ValueSet (e.g., LOINC Answer list), or ConceptMap.

$expand
Returns the set of codes included in a ValueSet.

$validate-code
Checks to see if a specific code is in a given ValueSet.

$translate
Use with the ConceptMap resource to find all of the concepts a particular source concept is mapped to.
property
Specific information about a resource. There are general properties defined across code systems (e.g., ), as well as specific properties defined within the LOINC code system (e.g., VersionFirstReleased, COMPONENT, ORDER_OBS, CLASSTYPE). Use with $lookup to return only the information related to that property.
