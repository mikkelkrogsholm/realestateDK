library(tidyverse)

tables <- realestate_tables()

table_ids <- tables$id

my_roxygen_data <- pbapply::pblapply(table_ids, function(table_id){

  x <- statsDK::retrieve_metadata(table_id, base_url = "http://api.statbank.dk/v1/s20/")

  varsall <- statsDK::get_variables(x)

  vars <- varsall %>%
    group_by(param) %>% slice(1) %>% ungroup()

  desc_1a <- list(
    paste("@title", x$text),
    paste("@description", x$description),
    paste0("@references \\url{http://rkr.statistikbank.dk/", table_id,"}")
  )

  desc_2 <- lapply(1:nrow(x$variables), function(i) {
    paste0('@param ', x$variables$id[i], ' is the ',  x$variables$text[i], '. Call realestateDK::table_vars("', table_id, '") to see all available parameter settings.')
  })

  params <- lapply(1:nrow(vars), function(i) paste0(vars$param[i], ' = "', vars$setting[i], '"')) %>%
    unlist() %>% paste(collapse = ", ")

  my_ex <- paste0("realestateDK::", tolower(table_id), "(", params, ")" )

  desc_1b <- list(
    paste0("@return a tibble"),
    paste0("@export"),
    paste0("@examples\n#' ", my_ex)
  )

  desc_3 <- c(desc_1a, desc_2, desc_1b)

  desc_3 <- desc_3 %>% unlist() %>% paste0("#' ", .) %>%
    paste0(., collapse = "\n")

  desc_4 <- paste0(table_id, ' <- function(..., lang = "en"){
        statsDK::retrieve_data("', table_id,'", ..., lang = lang, base_url = "http://api.statbank.dk/v1/s20/")
  }')

  desc_5 <- paste0(desc_3, "\n\n", desc_4)

  return(desc_5)

})

names(my_roxygen_data) <- table_ids

unlist(my_roxygen_data) %>%
  paste0(collapse = "\n\n\n") %>%
  write_lines("R/table_functions.R")
