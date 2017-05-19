#' Get enviroments list
#'
#' @details
#'
#' @return a list of enviroments
#' @param accountId accountId to request
#' @param containerId containerId to request
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
gtm_enviroments_list <- function(accountId,containerId) {
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
#' @param accountId accountId to request
#' @param containerId containerId to request
#' @param environmentId
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
gtm_enviroments_list <- function(accountId,containerId,environmentId) {
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
