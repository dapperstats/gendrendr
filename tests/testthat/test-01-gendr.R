context("Test gendr functions")

test_that("gendr", {
  expect_warning(expect_is(gendr(), "data.frame"))
  expect_error(gendr(names = 1))
  expect_error(gendr(locations = 1))
  expect_error(gendr(languages = 1))
  expect_error(gendr(methods = 1))
  expect_error(gendr(years = 1.5))
})
