#' Get containers list
#'
#' @details
#'
#' @return a list of containers
#' @importFrom googleAuthR gar_api_generator
#' @family managementAPI functions
#' @export
#'
get_containers_list <- function(accountId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/"
    )
  # tagmanager.tags.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
