#' Get account list
#'
#' @details
#'
#' @return a dataframe of accounts
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
get_accounts_list <- function() {
  url <-
    paste0("https://www.googleapis.com/tagmanager/v1/accounts/")
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()
}
