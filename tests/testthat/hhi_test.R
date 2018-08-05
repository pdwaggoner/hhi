context("hhi tests")

library(hhi)

test_that("function operates properly", {
  data(x)
  d <- x[ ,s]
  shares <- try(sum(x[ ,s]))
  expect_true(is.data.frame(x), label = "data.frame returned")
  expect_true(is.numeric(d), label = "numeric values returned")
  expect_warning(shares < 100 | shares > 100)
  expect_error(any(d < 0))
})

test_that("hhi returns sum of squared shares", {
  expect_equal(hhi("x", "s"), sum((x[ ,s])^2))
})
