# library(googleTagManageR)
context("Accounts fetching")

test_that("List accounts", {
  accounts <- gtm_accounts_list()
  expect_s3_class(accounts, "data.frame")
})
