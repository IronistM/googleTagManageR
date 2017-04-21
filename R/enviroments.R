#' Get enviroments list
#'
#' @details
#'
#' @return a list of enviroments
#' @param accountId
#' @param containerId
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
get_enviroments_list <- function(accountId,containerId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/enviroments/"
    )
  # tagmanager.enviroments.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
#' Get a GTM's enviroment details
#'
#' @details
#'
#' @return a list of enviroments
#' @param accountId
#' @param containerId
#' @param environmentId
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
get_enviroments_list <- function(accountId,containerId,environmentId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v1/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/enviroments/",
      environmentId
    )
  # tagmanager.enviroments.list
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
