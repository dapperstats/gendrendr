context("Test utility functions")

test_that("ifnull", {
  expect_equal(ifnull(NULL, 123), 123)
  expect_equal(ifnull(TRUE, 123), TRUE)
})


test_that("check_type", {
  names <- "sam"
  expect_silent(check_type(x = names, type = "character"))
  names <- 2019
  expect_error(check_type(x = names, type = "character"))
  years <- 2019
  expect_silent(check_type(x = years, type = "integer"))
  years <- "sam"
  expect_error(check_type(x = years, type = "integer"))
})

test_that("get_locale", {
  expect_equal(length(get_locale()), 2)
  expect_is(get_locale(), "character")
})