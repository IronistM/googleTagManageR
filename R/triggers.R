#' Get triggers list
#'
#' @details
#' @param accountId
#' @param containerId
#' @return a list of triggers
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
get_triggers_list <- function(accountId, containerId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/triggers"
    )
  # tagmanager.triggers.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
#' Get a trigger's details
#'
#' @details
#' @param accountId
#' @param containerId
#' @param triggerId
#' @return a data frame of details
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
get_trigger <- function(accountId, containerId, triggerId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/triggers",
      triggerId
    )
  # tagmanager.triggers.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
