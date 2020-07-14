




url <- "http://loinc.org/vs/top-2000-lab-observations-us"
library(httr)

resp <- httr::GET(url = url, httr::authenticate(Sys.getenv("loinc_username"),
                                                Sys.getenv("loinc_password")))

content(resp,as="parsed")

parsed <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)


parsed2 <- parsed$compose$include[[1]]$concept %>% transpose()
parsed3 <- lapply(parsed2, unlist)
parsed4 <- dplyr::bind_cols(parsed3)
test <- jsonlite::fromJSON(content(resp, "text"))

http_type(resp)
