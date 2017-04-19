#' Get triggers list
#'
#' @details
#'
#' @return a list of triggers
#' @importFrom googleAuthR gar_api_generator
#' @family managementAPI functions
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
    gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
