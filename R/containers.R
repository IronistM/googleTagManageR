#' Get containers list
#'
#' @details
#'
#' @return a list of containers
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
get_containers_list <- function(accountId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v2/accounts/",
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
  f()$container
}
#' Get a GTM account's Container detail
#'
#' @param accountId accountId to request
#' @param containerId GTM containerId
#'
#' @family get functions
#' @return container info
#' @export
get_container <- function(accountId,
                          containerId) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v2/accounts/",
      accountId,
      "/containers/"
    )
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
#' Get a GTM account's Container version detail
#'
#' @param accountId accountId to request
#' @param containerId GTM containerId
#' @param headers Retrieve headers only when true. (Default: false)
#' @param includeDeleted Also retrieve deleted (archived) versions when true. (Default: false)
#'
#' @family get functions
#' @return container info
#' @export
get_container_versions <- function(accountId,
                          containerId, headers, includeDeleted) {
  url <-
    paste0(
      "https://www.googleapis.com/tagmanager/v2/accounts/",
      accountId,
      "/containers/",
      containerId,
      "/versions/"
    )
  f <-
    googleAuthR::gar_api_generator(
      url,
      "GET",
      data_parse_function = function(x)
        x
    )
  f()
}
