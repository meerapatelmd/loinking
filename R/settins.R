baseurl <- "https://fhir.loinc.org"


URL <- "https://fhir.loinc.org/CodeSystem/$lookup?system=http://loinc.org&code=LP14542-2&&property=parent"


library(httr)

resp <- httr::GET(url = URL, httr::authenticate(Sys.getenv("loinc_username"),
                                        Sys.getenv("loinc_password")))
