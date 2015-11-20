context("Combining Factor Levels")

test_that('Factors get combined', {
  test <- as.factor(c("a", "b", "c","c", "b", "a"))
  fxn_result <- factor_mush(test, c("a", "c"), "ac")
  desire_result <- as.factor(c("ac", "b", "ac", "ac", "b","ac"))
  expect_identical(fxn_result,desire_result)
})

test_that('Poor mush_names are detected', {
  test <- as.factor(c("a", "b", "c","c", "b", "a"))
  mush_name_long <- c("a","c")
  mush_name_num <- 42
  expect_error(factor_mush(test,c("a","c"), mush_name_long))
  expect_error(factor_mush(test,c("a","c"), mush_name_num))
})

test_that('Input non factors are caught', {
  test <- c(1:6)
  expect_error(factor_mush(test, c("a","c",)))
})
