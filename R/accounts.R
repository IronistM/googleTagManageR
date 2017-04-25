#' Get GTM account list
#'
#' @details
#'
#' @return a dataframe of accounts
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
gtm_accounts_list <- function() {
  url <-
    paste0("https://www.googleapis.com/tagmanager/v1/accounts/")
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()$accounts
}
#' Gets a GTM Account.
#'
#'
#' Set \code{options(googleAuthR.scopes.selected = c(https://www.googleapis.com/auth/tagmanager.edit.containers, https://www.googleapis.com/auth/tagmanager.manage.accounts, https://www.googleapis.com/auth/tagmanager.readonly)}
#' Then run \code{googleAuthR::gar_auth()} to authenticate.
#' See \code{\link[googleAuthR]{gar_auth}} for details.
#'
#' @param accountId The GTM Account ID
#' @importFrom googleAuthR gar_api_generator
#' @export
gtm_account <- function(accountId) {
  url <- paste0("https://www.googleapis.com/tagmanager/v1/accounts/", accountId)
  # tagmanager.accounts.get
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()
}
