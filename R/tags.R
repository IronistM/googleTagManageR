#' Get tags list
#'
#' @details
#'
#' @return a list of tags
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
get_tags_list <- function(accountId,containerId) {
  url <- paste0("https://www.googleapis.com/tagmanager/v1/accounts/",accountId,"/containers/",containerId,"/tags")
  # tagmanager.tags.list
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()
}
