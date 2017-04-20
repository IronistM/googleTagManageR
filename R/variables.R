#' Get variables list
#'
#' @details
#'
#' @return a list of variables
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
get_variables_list <- function(accountId, containerId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/variables"
    )
  # tagmanager.variables.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
