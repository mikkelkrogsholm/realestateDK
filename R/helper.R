#' Show all parameter settings
#'
#' Show alle the available parameter settings for a given table id.
#'
#' @param table_id the id of the table you want to call.
#'
#' @return a tibble
#' @export
#'
#' @examples
#' realestateDK::table_vars("BM010")
#'
table_vars <- function(table_id){
  metadata <- statsDK::retrieve_metadata(table_id, base_url = "http://api.statbank.dk/v1/s20/")
  statsDK::get_variables(metadata)
}
